namespace LazyLoading.Infrastructure.EntityFrameworkDataAccess.Entities
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public class Logger
    {
        [Key]
        public int Id { get; set; }
        public string Dni { get; set; }
        public DateTime Date { get; set; }
        public string Trips { get; set; }
    }
}
