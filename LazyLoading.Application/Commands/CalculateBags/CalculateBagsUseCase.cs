namespace LazyLoading.Application.Commands.CalculateBags
{
    using LazyLoading.Domain.Trips;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;

    public sealed class CalculateBagsUseCase : ICalculateBagsUseCase
    {
        public CalculateBagsUseCase() { }

        public Task<List<Bag>> Execute(List<Element> elements)
        {
            List<Element> elementsPerBag = new List<Element>();
            List<Bag> bags = new List<Bag>();

            Element max = elements.OrderByDescending(o => o.Weight.Value).FirstOrDefault();
            elementsPerBag.Add(max);
            elements.Remove(max);

            int weight = 0;
            int index = 1;
            bool isvalid = true;

            while (weight < 50 && max.Weight < 50)
            {
                if(elements.Count > 0)
                {
                    Element lowest = elements.OrderBy(o => o.Weight.Value).FirstOrDefault();
                    elementsPerBag.Add(lowest);
                    elements.Remove(lowest);
                    index++;
                    weight = max.Weight * index;
                }                
                else
                {
                    isvalid = false;
                    break;
                }
            }

            if(isvalid)
            {
                bags.Add(new Bag(elementsPerBag));

                if (elements.Count > 0)
                {
                    bags.AddRange(Execute(elements).Result);
                }
            }           
            
            return Task.FromResult(bags);
        }
    }
}
