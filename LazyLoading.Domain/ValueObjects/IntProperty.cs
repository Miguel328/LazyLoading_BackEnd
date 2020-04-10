namespace LazyLoading.Domain.ValueObjects
{
    public class IntProperty
    {
        public int Value { get; set; }

        public override string ToString()
        {
            return Value.ToString();
        }

        public static implicit operator int(IntProperty property)
        {
            return property.Value;
        }

        public override bool Equals(object obj)
        {
            if (obj is null)
            {
                return false;
            }

            if (ReferenceEquals(this, obj))
            {
                return true;
            }

            if (obj is int)
            {
                return (int)obj == Value;
            }

            return ((IntProperty)obj).Value == Value;
        }

        public override int GetHashCode()
        {
            return Value.GetHashCode();
        }

    }
}
