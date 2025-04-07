package Generics;

public class  Gen<T>{ //补充泛型类Gen的定义
    /***  BEGIN  ***/
    private T[] array;
    private T[] array2;
    Gen()
    {

    }
    Gen(T[] list)
    {
        this.array = list;
    }
    public <D> void setArray(D[] list)
    {
        this.array = (T[])list;
    }
    public <D> void setArray2(D[] list)
    {
        this.array2 = (T[])list;
    }
    public T[] getArray()
    {
        return this.array;
    }
    public T[] getArray2(){ return this.array2;}


    /*** END  ***/

}

