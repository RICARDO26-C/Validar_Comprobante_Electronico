public class ComprobanteElectrónico
{
    public static void Main(string[] args)
    {
        Console.WriteLine("====================================");
        Console.WriteLine("     COMPROBANTE - ELECTRONICO      ");
        Console.WriteLine("====================================");
        Console.WriteLine("Ingrese el comprobante Electrónico: ");
        string numero = Console.ReadLine();

        if (ValidarComprobanteElectronico(numero))
        Console.WriteLine("Comprobante válido.");
        else
            Console.WriteLine("Comprobante inválido.");

    }
    public static bool ValidarComprobanteElectronico(string numero)

    {     //longitud
        if (numero.Length != 13)
            return false;

         // GUION
        if (numero[4] != '-')
            return false;

          // Primera letra
        if (numero[0] != 'B' && numero[0] != 'F')
            return false;

          //Tres Dígitos de la serie
        for (int i = 1; i <= 3; i++)
        {
            if (!char.IsDigit(numero[i]))
                return false;
        }
        // Ocho dígitos del correlativo
        for (int i = 5; i <= 12; i++)
        {
            if (!char.IsDigit(numero[i]))
                return false;
        }

        return true;
    }
}
