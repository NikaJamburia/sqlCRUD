﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlDavaleba
{
    class Comboboxitem
    {
        public string text { get; set; }
        public object value { get; set; }

        public override string ToString()
        {
            return text;
        }
    }
}
