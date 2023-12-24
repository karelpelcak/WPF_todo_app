using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDo_Pelcak
{
    public enum Prio
    {
        Low = 0, Medium = 1, High = 2
    }
    internal class Task
    {
        public DateTime CreatedAt { get; set; }
        public string TaskDesc { get; set; }
        public bool Finished { get; set; }
        public Prio Prio { get; set; }

        public Task()
        {
            CreatedAt = DateTime.Now;
            TaskDesc = string.Empty;
            Finished = false;
            Prio = 0;
        }
    }
}
