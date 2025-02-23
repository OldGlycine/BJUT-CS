#include "ping.h"            

struct proto	proto_v4 = { proc_v4, send_v4, NULL, NULL, 0, IPPROTO_ICMP };

#ifdef	IPV6
struct proto	proto_v6 = { proc_v6, send_v6, NULL, NULL, 0, IPPROTO_ICMPV6 };
#endif
char*   name;
const char *ping_version="zc_1.0";
int     flood_ping=0;
int  	w_version=0;
int     rttcnt=0;
int     avg=0;
int     rttmax=0,rttmin=10000;
int     rttsum=0;
char     *sendbuf=NULL;
int     l_bufsize=1500;
int     l_flag=0;
int     temp=0;
int 	is_audio=0;
int     deadline=0;
int     connect_socket=0;
struct  timeval start_time;
int     ttl_value = 64;
int     print_timestamp=0;
double 	packet_loss=0;
int 	packets_received=0;
int 	total_time=0.0;
int 	quiet=0;
int 	time_interval=1;
int     broadcast = 0;
int	datalen = 56;		/* data that goes with ICMP echo request */
int     count = 0;
int     already_sent = 0;
int main(int argc, char **argv)
{

	
	gettimeofday(&start_time,NULL);//for instruction q

	if (signal(SIGINT, sigint_handler) == SIG_ERR) {
        	perror("注册 SIGINT 处理函数失败");
        	return 1;
        }

	int  c;
	struct addrinfo	*ai;

	opterr = 0;		/* don't want getopt() writing to stderr */
	while ( (c = getopt(argc, argv, "vbc:i:qs:t:VhaCDfw:l:")) != -1) {
		switch (c) {
		case 'v':
			verbose++;
			break;
		case 'b':
			broadcast=1;
			break;
		case 'c':
			count=atoi(optarg);
			break;

		case 'i':
			time_interval=atoi(optarg);
			break;
		case 'q':
			quiet=1;
			break;
		case 's':
			datalen=atoi(optarg);
			if(datalen<=0){
			   err_quit("unvalid numer",datalen);
			}
			break;
		case 't':
			ttl_value=atoi(optarg);
			if(ttl_value<=0){
				err_quit("unvalid number",ttl_value);
			}
			break;
		case 'V':
			print_version();
			break;
		case 'l':
			l_flag=1;
			temp=atoi(optarg);
			//char sendbuf[temp];
			break;
		case 'h':
			print_help();
			exit(EXIT_SUCCESS);
		case 'a':
			is_audio=1;
			break;
		case 'C':
			connect_socket=1;
			break;
		case 'D':
			print_timestamp=1;
			break;
		case 'f':
			flood_ping=1;
			break;
		case 'w':
			deadline=atoi(optarg);
			w_version=1;
			break;
		case '?':
			err_quit("unrecognized option: %c", c);
		}
	}
	if(l_flag){
		sendbuf=(char *)malloc(sizeof(temp));
	}
	else {sendbuf=(char*)malloc(1500);}
	if (optind != argc-1)
		err_quit("usage: ping [ -v ] <hostname>");
	host = argv[optind];

	pid = getpid();
	signal(SIGALRM, sig_alrm);

	ai = host_serv(host, NULL, 0, 0);
	name = ai->ai_canonname;
	printf("ping %s (%s): %d data bytes\n", ai->ai_canonname,
		   Sock_ntop_host(ai->ai_addr, ai->ai_addrlen), datalen);

		/* 4initialize according to protocol */
	if (ai->ai_family == AF_INET) {
		pr = &proto_v4;
#ifdef	IPV6
	} else if (ai->ai_family == AF_INET6) {
		pr = &proto_v6;
		if (IN6_IS_ADDR_V4MAPPED(&(((struct sockaddr_in6 *) ai->ai_addr)
		->sin6_addr)))
			err_quit("cannot ping IPv4-mapped IPv6 address");
#endif
	} else
		err_quit("unknown address family %d", ai->ai_family);

	pr->sasend = ai->ai_addr;
	pr->sarecv = calloc(1, ai->ai_addrlen);
	pr->salen = ai->ai_addrlen;

	readloop();

	exit(0);
}


void print_help(){
    printf("用法: ping [选项] <hostname>\n");
    printf("选项:\n");
    printf("1  -v      详细输出\n");
    printf("2  -b      使用广播\n");
    printf("3  -c <次数> 发送指定数量的包\n");
    printf("4  -i <间隔> 设置发送间隔，单位秒\n");
    printf("5  -q      静默模式，只在结束时显示统计信息\n");
    printf("6  -s <大小> 设置ICMP数据部分的大小\n");
    printf("7  -t <TTL> 设置TTL值\n");
    printf("8  -V      显示版本信息\n");
    printf("9  -h      显示帮助信息\n");
    printf("10  -a      播放声音提示\n");
    printf("11  -C      使用连接的套接字发送\n");
    printf("12  -D      显示时间戳\n");
    printf("  -f      洪水模式\n");
    printf("13  -w <时间> 设置超时时间，单位秒\n");
    printf("14  -l <大小> 设置发送缓冲区大小\n");
}


void print_version(void){
	printf("Ping version: %s\n",ping_version);
	exit(EXIT_SUCCESS);
}

void sigint_handler(int signum) {
    struct timeval end_time;
    gettimeofday(&end_time,NULL);
    double elapsed_time = (end_time.tv_sec-start_time.tv_sec)* 1000.0;
    elapsed_time += (end_time.tv_usec - start_time.tv_usec) / 1000.0;
    total_time += elapsed_time;
    printf("\n收到 SIGINT (Ctrl+C) 信号，程序结束。\n");
    if(1){
    	printf("--- %s 的 ping 统计信息 ---\n", name);
    	printf("发送了 %d 个包，接收到 %d 个包，丢包率 %.1f%%，总时间 %dms max:%d min:%d avg:%d\n",
           already_sent, packets_received, ((already_sent - packets_received) / already_sent) * 100.0, total_time,rttmax,rttmin,avg);
    }
    exit(signum);
}

void countdown(int signum) {
    struct timeval end_time;
    gettimeofday(&end_time,NULL);
    double elapsed_time = (end_time.tv_sec-start_time.tv_sec)* 1000.0;
    elapsed_time += (end_time.tv_usec - start_time.tv_usec) / 1000.0;
    total_time += elapsed_time;
    if(total_time/1000.0>deadline-1){
    	printf("%d",total_time);
        printf("总时间 %dms\n", deadline);	
        exit(EXIT_SUCCESS);
    }

   
}

void proc_v4(char *ptr, ssize_t len, struct timeval *tvrecv)
{
	int	hlen1, icmplen;
	double			rtt;
	struct ip		*ip;
	struct icmp		*icmp;
	struct timeval	*tvsend;

	packets_received++;

	ip = (struct ip *) ptr;		/* start of IP header */
	hlen1 = ip->ip_hl << 2;		/* length of IP header */

	icmp = (struct icmp *) (ptr + hlen1);	/* start of ICMP header */
	if ( (icmplen = len - hlen1) < 8)
		err_quit("icmplen (%d) < 8", icmplen);

	if (icmp->icmp_type == ICMP_ECHOREPLY) {
		if (icmp->icmp_id != pid)
			return;			/* not a response to our ECHO_REQUEST */
		if (icmplen < 16)
			err_quit("icmplen (%d) < 16", icmplen);

		tvsend = (struct timeval *) icmp->icmp_data;
		tv_sub(tvrecv, tvsend);
		rtt = tvrecv->tv_sec * 1000.0 + tvrecv->tv_usec / 1000.0;
		//rttmax=rtt;
		//rttmin=rtt;
		if(rtt>rttmax)rttmax=rtt;
		if(rtt<rttmin)rttmin=rtt;
		rttsum+=rtt;
		rttcnt++;
		avg=rttsum/(1.0*rttcnt);
		if(!quiet)
		printf("%d bytes from %s: seq=%u, ttl=%d, rtt=%.3f ms\n",
				icmplen, Sock_ntop_host(pr->sarecv, pr->salen),
				icmp->icmp_seq, ip->ip_ttl, rtt);

	}  if (verbose) {
		if(!quiet){
		printf("  %d bytes from %s: type = %d, code = %d\n",
				icmplen, Sock_ntop_host(pr->sarecv, pr->salen),
				icmp->icmp_type, icmp->icmp_code);
		}
	}
}

void proc_v6(char *ptr, ssize_t len, struct timeval* tvrecv)
{
#ifdef	IPV6
	int hlen1, icmp6len;
	double	rtt;
	struct ip6_hdr		*ip6;
	struct icmp6_hdr	*icmp6;
	struct timeval		*tvsend;

	packets_received++;

	/*
	ip6 = (struct ip6_hdr *) ptr;		// start of IPv6 header 
	hlen1 = sizeof(struct ip6_hdr);
	if (ip6->ip6_nxt != IPPROTO_ICMPV6)
		err_quit("next header not IPPROTO_ICMPV6");

	icmp6 = (struct icmp6_hdr *) (ptr + hlen1);
	if ( (icmp6len = len - hlen1) < 8)
		err_quit("icmp6len (%d) < 8", icmp6len);
	*/        

        icmp6=(struct icmp6_hdr *)ptr;  
        if((icmp6len=len)<8)                    //len-40
		err_quit("icmp6len (%d) < 8", icmp6len);


	if (icmp6->icmp6_type == ICMP6_ECHO_REPLY) {
		if (icmp6->icmp6_id != pid)
			return;			/* not a response to our ECHO_REQUEST */
		if (icmp6len < 16)
			err_quit("icmp6len (%d) < 16", icmp6len);

		tvsend = (struct timeval *) (icmp6 + 1);
		tv_sub(tvrecv, tvsend);
		rtt = tvrecv->tv_sec * 1000.0 + tvrecv->tv_usec / 1000.0;
		if(!quiet)
		printf("%d bytes from %s: seq=%u, hlim=%d, rtt=%.3f ms\n",
				icmp6len, Sock_ntop_host(pr->sarecv, pr->salen),
				icmp6->icmp6_seq, ip6->ip6_hlim, rtt);

	}  if (verbose) {
		if(!quiet){
			printf("  %d bytes from %s: type = %d, code = %d\n",
				icmp6len, Sock_ntop_host(pr->sarecv, pr->salen),
				icmp6->icmp6_type, icmp6->icmp6_code);
		}
	}
#endif	/* IPV6 */
}

unsigned short
in_cksum(unsigned short *addr, int len)
{
        int                             nleft = len;
        int                             sum = 0;
        unsigned short  *w = addr;
        unsigned short  answer = 0;

        /*
         * Our algorithm is simple, using a 32 bit accumulator (sum), we add
         * sequential 16 bit words to it, and at the end, fold back all the
         * carry bits from the top 16 bits into the lower 16 bits.
         */
        while (nleft > 1)  {
                sum += *w++;
                nleft -= 2;
        }

                /* 4mop up an odd byte, if necessary */
        if (nleft == 1) {
                *(unsigned char *)(&answer) = *(unsigned char *)w ;
                sum += answer;
        }

                /* 4add back carry outs from top 16 bits to low 16 bits */
        sum = (sum >> 16) + (sum & 0xffff);     /* add hi 16 to low 16 */
        sum += (sum >> 16);                     /* add carry */
        answer = ~sum;                          /* truncate to 16 bits */
        return(answer);
}

void
send_v4(void)
{

	if(print_timestamp){
		struct timeval tv;
		gettimeofday(&tv,NULL);
		printf("[%ld.%06ld]",tv.tv_sec,tv.tv_usec);
	}
	if(is_audio){
		printf("\a");
	}
	int    len;
	struct icmp	*icmp;
	int    ttl = ttl_value;
	icmp = (struct icmp *) sendbuf;
	icmp->icmp_type = ICMP_ECHO;
	icmp->icmp_code = 0;
	icmp->icmp_id = pid;
	icmp->icmp_seq = nsent++;
	gettimeofday((struct timeval *) icmp->icmp_data, NULL);

	len = 8 + datalen;		/* checksum ICMP header and data */
	icmp->icmp_cksum = 0;
	icmp->icmp_cksum = in_cksum((u_short *) icmp, len);

	if(connect_socket){
		if(connect(sockfd,pr->sasend,pr->salen)<0){
			err_quit("connect error");
		}
	}

	//set TTL
	if(setsockopt(sockfd,IPPROTO_IP,IP_TTL,&ttl,sizeof(ttl))<0){
		err_sys("set TTL FAIL");
	}

	if (broadcast && setsockopt(sockfd, SOL_SOCKET, SO_BROADCAST, &broadcast, sizeof(broadcast)) < 0) {
        	err_sys("setsockopt for broadcast failed");
       }

	sendto(sockfd, sendbuf, len, 0, pr->sasend, pr->salen);
	already_sent++;
	if(count&&already_sent>count){
		exit(0);
	}
}

void
send_v6()
{
	if(print_timestamp){
		struct timeval tv;
		gettimeofday(&tv,NULL);
		printf("[%ld.%06ld]",tv.tv_sec,tv.tv_usec);
	}
	if(is_audio){
		printf("\a");
	}
#ifdef	IPV6
	int    len;
	struct icmp6_hdr	*icmp6;
	int ttl = ttl_value;
	icmp6 = (struct icmp6_hdr *) sendbuf;
	icmp6->icmp6_type = ICMP6_ECHO_REQUEST;
	icmp6->icmp6_code = 0;
	icmp6->icmp6_id = pid;
	icmp6->icmp6_seq = nsent++;
	gettimeofday((struct timeval *) (icmp6 + 1), NULL);

	len = 8 + datalen;		/* 8-byte ICMPv6 header */

	if(connect_socket){
		if(connect(sockfd,pr->sasend,pr->salen)<0){
			err_quit("connect error");
		}
	}

	//set TTL
	if(setsockopt(sockfd,IPPROTO_IP,IP_TTL,&ttl,sizeof(ttl))<0){
	  	err_sys("set TTL FAIL");
	}

	sendto(sockfd, sendbuf, len, 0, pr->sasend, pr->salen);
		/* kernel calculates and stores checksum for us */
	already_sent++;
	if(count&&already_sent>count){
		exit(0);
	}
#endif	/* IPV6 */
}

void
readloop(void)
{
	int				size;
	char			recvbuf[BUFSIZE];
	socklen_t		len;
	ssize_t			n;
	struct timeval	tval;

	sockfd = socket(pr->sasend->sa_family, SOCK_RAW, pr->icmpproto);
	setuid(getuid());		/* don't need special permissions any more */

	size = 60 * 1024;		/* OK if setsockopt fails */
	setsockopt(sockfd, SOL_SOCKET, SO_RCVBUF, &size, sizeof(size));
	if(!flood_ping)
	sig_alrm(SIGALRM);		/* send first packet */

	for ( ; ; ) {
		len = pr->salen;
		n = recvfrom
		(sockfd, recvbuf, sizeof(recvbuf), 0, pr->sarecv, &len);
		if (n < 0) {
			if (errno == EINTR)
				continue;
			else
				err_sys("recvfrom error");
		}

		gettimeofday(&tval, NULL);
		(*pr->fproc)(recvbuf, n, &tval);
		if(flood_ping){
			packet_loss=((already_sent-packets_received)*100.0)/already_sent;
			printf("Packet Loss: %lf%%\n",packet_loss);
		}
		if(w_version)
		countdown(deadline);
	}
}

void
sig_alrm(int signo)
{
        (*pr->fsend)();

        if(!flood_ping){
         alarm(time_interval);
         return;         /* probably interrupts recvfrom() */
        }
        else{
        	//alarm(0);
        	//(*pr ->fsend)();
        	//alarm(1);
        }
       
}

void
tv_sub(struct timeval *out, struct timeval *in)
{
	if ( (out->tv_usec -= in->tv_usec) < 0) {	/* out -= in */
		--out->tv_sec;
		out->tv_usec += 1000000;
	}
	out->tv_sec -= in->tv_sec;
}




char *
sock_ntop_host(const struct sockaddr *sa, socklen_t salen)
{
    static char str[128];               /* Unix domain is largest */

        switch (sa->sa_family) {
        case AF_INET: {
                struct sockaddr_in      *sin = (struct sockaddr_in *) sa;

                if (inet_ntop(AF_INET, &sin->sin_addr, str, sizeof(str)) == NULL)
                        return(NULL);
                return(str);
        }

#ifdef  IPV6
        case AF_INET6: {
                struct sockaddr_in6     *sin6 = (struct sockaddr_in6 *) sa;

                if (inet_ntop(AF_INET6, &sin6->sin6_addr, str, sizeof(str)) == NULL)
                        return(NULL);
                return(str);
        }
#endif

#ifdef  HAVE_SOCKADDR_DL_STRUCT
        case AF_LINK: {
                struct sockaddr_dl      *sdl = (struct sockaddr_dl *) sa;

                if (sdl->sdl_nlen > 0)
                        snprintf(str, sizeof(str), "%*s",
                                         sdl->sdl_nlen, &sdl->sdl_data[0]);
                else
                        snprintf(str, sizeof(str), "AF_LINK, index=%d", sdl->sdl_index);
                return(str);
        }
#endif
        default:
                snprintf(str, sizeof(str), "sock_ntop_host: unknown AF_xxx: %d, len %d",
                                 sa->sa_family, salen);
                return(str);
        }
    return (NULL);
}

char *
Sock_ntop_host(const struct sockaddr *sa, socklen_t salen)
{
        char    *ptr;

        if ( (ptr = sock_ntop_host(sa, salen)) == NULL)
                err_sys("sock_ntop_host error");        /* inet_ntop() sets errno */
        return(ptr);
}

struct addrinfo *
host_serv(const char *host, const char *serv, int family, int socktype)
{
        int                             n;
        struct addrinfo hints, *res;

        bzero(&hints, sizeof(struct addrinfo));
        hints.ai_flags = AI_CANONNAME;  /* always return canonical name */
        hints.ai_family = family;               /* AF_UNSPEC, AF_INET, AF_INET6, etc. */
        hints.ai_socktype = socktype;   /* 0, SOCK_STREAM, SOCK_DGRAM, etc. */

        if ( (n = getaddrinfo(host, serv, &hints, &res)) != 0)
                return(NULL);

        return(res);    /* return pointer to first on linked list */
}
/* end host_serv */

static void
err_doit(int errnoflag, int level, const char *fmt, va_list ap)
{
        int             errno_save, n;
        char    buf[MAXLINE];

        errno_save = errno;             /* value caller might want printed */
#ifdef  HAVE_VSNPRINTF
        vsnprintf(buf, sizeof(buf), fmt, ap);   /* this is safe */
#else
        vsprintf(buf, fmt, ap);                                 /* this is not safe */
#endif
        n = strlen(buf);
        if (errnoflag)
                snprintf(buf+n, sizeof(buf)-n, ": %s", strerror(errno_save));
        strcat(buf, "\n");

        if (daemon_proc) {
                syslog(level, "%s", buf);
                /* syslog(level, buf); */
        } else {
                fflush(stdout);         /* in case stdout and stderr are the same */
                fputs(buf, stderr);
                fflush(stderr);
        }
        return;
}


/* Fatal error unrelated to a system call.
 * Print a message and terminate. */

void
err_quit(const char *fmt, ...)
{
        va_list         ap;

        va_start(ap, fmt);
        err_doit(0, LOG_ERR, fmt, ap);
        va_end(ap);
        exit(1);
}

/* Fatal error related to a system call.
 * Print a message and terminate. */

void
err_sys(const char *fmt, ...)
{
        va_list         ap;

        va_start(ap, fmt);
        err_doit(1, LOG_ERR, fmt, ap);
        va_end(ap);
        exit(1);
}


/*
 * getopt是由Unix标准库提供的函数，查看命令man 3 getopt。
 * 
 * getopt函数的参数：
 * 参数argc和argv：通常是从main的参数直接传递而来，argc是参数的数量，
 *                 argv是一个常量字符串数组的地址。
 * 参数optstring：一个包含正确选项字符的字符串，如果一个字符后面有冒号，
                  那么这个选项在传递参数时就需要跟着一个参数。

 * 外部变量：
 * char *optarg：如果有参数，则包含当前选项参数字符串
 * int optind：argv的当前索引值。当getopt函数在while循环中使用时，
 *             剩下的字符串为操作数，下标从optind到argc-1。            
 * int opterr：这个变量非零时，getopt()函数为“无效选项”和“缺少参数选项，
 *             并输出其错误信息。
 * int optopt：当发现无效选项字符之时，getopt()函数或返回 \’ ? \’ 字符，
 *             或返回字符 \’ : \’ ，并且optopt包含了所发现的无效选项字符。
 */

