using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _301098663_cadiente__Test1
{
    public class Bell
    {
        public string Department { get; set; }

        
        public string EmployeeName { get; set; }

        public DateTime Date { get; set; }

        public string ProjectName { get; set; }

        public string Description { get; set; }



        public override string ToString()
        {
            return Department;
        }

    }
}
