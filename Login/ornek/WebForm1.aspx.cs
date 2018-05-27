using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ornek
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                


                RangeArray ra2 = new RangeArray(100, 90);

               

            }
            catch (RangeArrayException ex)
            {
                Label2.Text = ex.ToString();
            }

            try
            {
                RangeArray ra = new RangeArray(-5, 4);
                Label1.Text = "Length of ra:" + ra.uzunluk;
                for (int i = -5; i <= 4; i++)
                    ra[i] = i;
                for (int i = 0; i < 10; i++)
                    ra[i] = i;
            }
            catch (RangeArrayException exc)
            {
                Label1.Text = exc.ToString();
            }

           


            

        }

        class RangeArrayException : ApplicationException
        {
            public RangeArrayException() : base() {}

            public RangeArrayException(string str) : base(str) { }

            public override string ToString()
            {
                return Message;
            }
        }

        class RangeArray
        {
            int[] a;
            int lower;
            int upper;
            int length;

            public RangeArray ( int l, int u) {

                u++;
                if(u<=l)
                    throw new RangeArrayException("Ust sinir icin kucuk deger olamaz.");

                length=u-l;
                a=new int[length];

                lower = l;
                upper = --u;
                

            }

            public int uzunluk
            {
                get
                {
                    return length;
                }
            }



            // indeksleyici
            public int this[int index]
            {
                get
                {
                    if (indeksSinir(index))
                        return a[index - lower];
                    else
                        throw new RangeArrayException("Range error");
                }

                set
                {
                    if (indeksSinir(index))
                        a[index - lower] = value;
                    else
                        throw new RangeArrayException("Range error");

                }
            }



            private bool indeksSinir(int index)
            {
                if (index >= lower && index <= upper)
                    return true;
                else return false;
            }
        }

       
    }
}