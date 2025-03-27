{config, pkgs, ...}: {
  # Configure printing services to use Epson drivers
  services.printing = { enable = true; drivers = [ pkgs.epson-escpr ]; };
  # Enable Avahi to use printer
  services.avahi = { enable = true; nssmdns4 = true; };
  # Printer config itself
  hardware.printers = {
  ensurePrinters = [
    {
      name = "Epson_L3060";
      location = "Home";
      deviceUri = "dnssd://EPSON%20L3060%20Series._pdl-datastream._tcp.local/";
      model = "epson-inkjet-printer-escpr/Epson-L3060_Series-epson-escpr-en.ppd";
      ppdOptions = {
        PageSize = "A4";
        };
      }
    ];
    ensureDefaultPrinter = "Epson_L3060";
  };
}