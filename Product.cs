using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PHARMACYFINAL
{
    public class Product
    {
        public string name, image, price;
        public Product(string na, string img, string pr)
        {
            name = na;
            image = img;
            price = pr;
        }
    }
}