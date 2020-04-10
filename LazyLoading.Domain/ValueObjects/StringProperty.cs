namespace LazyLoading.Domain.ValueObjects
{
    public class StringProperty
    {
        public string Value { get; set; }

        public override string ToString()
        {
            return Value;
        }

        public static implicit operator string(StringProperty property)
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

            if (obj is string)
            {
                return obj.ToString() == Value;
            }

            return ((StringProperty)obj).Value == Value;
        }

        public override int GetHashCode()
        {
            return Value.GetHashCode();
        }
    }
}
