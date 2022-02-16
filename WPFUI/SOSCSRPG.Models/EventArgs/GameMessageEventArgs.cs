﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SOSCSRPG.Models.EventArgs
{
    public class GameMessageEventArgs : System.EventArgs
    {
        public string Message { get; set; }

        public GameMessageEventArgs(string message)
        {
            Message = message;
        }
    }
}