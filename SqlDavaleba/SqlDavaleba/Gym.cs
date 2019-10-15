using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlDavaleba
{
    class Gym
    {
        public Gym(string id, string address)
        {
            Id = id;
            Address = address;
        }
        public string Id { get; set; }
        public string Address { get; set; }
    }
}
