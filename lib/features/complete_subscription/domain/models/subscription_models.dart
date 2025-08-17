

class SubscriptionPlan {
  final String name;
  final String price;
  final double monthlyAmount;

  const SubscriptionPlan({
    required this.name,
    required this.price,
    required this.monthlyAmount,
  });


}

class DeliveryAddress {
  final String fullName;
  final String phone;
  final String city;
  final String neighborhood;
  final String streetAddress;
  final String additionalNotes;

  const DeliveryAddress({
    required this.fullName,
    required this.phone,
    required this.city,
    required this.neighborhood,
    required this.streetAddress,
    required this.additionalNotes,
  });
}

class PausePlan {
  final String title;
  final String duration;

  const PausePlan({required this.title, required this.duration});

 
}

