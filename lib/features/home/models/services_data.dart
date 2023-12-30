class ServicePageContent {
  final String name;
  final String serviceRendered;
  final String price;

  ServicePageContent({
    required this.name,
    required this.serviceRendered,
    required this.price,
  });
}

final List<ServicePageContent> services = [
  ServicePageContent(
    name: "All Things Fixed",
    serviceRendered: "Repairing",
    price: "60 per hour",
  ),
  ServicePageContent(
    name: "Sparkle Squad",
    serviceRendered: "Cleaning",
    price: "30 per hour",
  ),
  ServicePageContent(
    name: "Tech Revive",
    serviceRendered: "Electronics",
    price: "75 per hour",
  ),
  ServicePageContent(
    name: "Leak Busters",
    serviceRendered: "Plumbing",
    price: "80 per hour",
  ),
  ServicePageContent(
    name: "Wash & Wonder",
    serviceRendered: "Washing",
    price: "25 per load",
  ),
  ServicePageContent(
    name: "Home Hero Helpers",
    serviceRendered: "Repairing, Cleaning",
    price: "50 per hour (combo rate)",
  ),
  ServicePageContent(
    name: "Spark & Shine",
    serviceRendered: "Cleaning",
    price: "40 per hour",
  ),
  ServicePageContent(
    name: "Gadget Gurus",
    serviceRendered: "Electronics",
    price: "50 per hour",
  ),
  ServicePageContent(
    name: "Flow Masters",
    serviceRendered: "Plumbing",
    price: "100 per hour",
  ),
  ServicePageContent(
    name: "Fresh & Fold Express",
    serviceRendered: "Washing",
    price: "40 per basket",
  ),
  ServicePageContent(
    name: "Multi-Fix Masters",
    serviceRendered: "Repairing, Electronics",
    price: "65 per hour (combo rate)",
  ),
  ServicePageContent(
    name: "Clean Slate Crew",
    serviceRendered: "Cleaning",
    price: "50 per deep clean",
  ),
  ServicePageContent(
    name: "Circuit Savers",
    serviceRendered: "Electronics",
    price: "45 per hour",
  ),
  ServicePageContent(
    name: "Pipe Pros",
    serviceRendered: "Plumbing",
    price: "90 per hour",
  ),
  ServicePageContent(
    name: "Whirlwind Wash",
    serviceRendered: "Washing",
    price: "35 per laundry bag",
  ),
];
