import 'package:uuid/uuid.dart';
import '../models/item_model.dart';


class ItemRepository {
  // Singleton pattern
  static final ItemRepository _instance = ItemRepository._internal();
  
  factory ItemRepository() {
    return _instance;
  }

  ItemRepository._internal();

  // Generate a list of sample items
  Future<List<ItemModel>> getItems() async {
    // Add a small delay to simulate network request
    await Future.delayed(const Duration(milliseconds: 800));
    
    const uuid = Uuid();
    
    return [
      ItemModel(
        id: uuid.v4(),
        title: 'Mountain Landscape',
        description: 'A breathtaking view of mountains with snow-capped peaks, lush green valleys, and a crystal clear lake reflecting the majestic scenery. Perfect for nature enthusiasts and adventure seekers looking to experience the raw beauty of mountainous terrain.',
        imageUrl: "https://images.unsplash.com/photo-1430000589629-f04107b5597c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NDYwNzU0MTR8&ixlib=rb-4.0.3&q=80&w=1080",
        category: 'Landscapes',
      ),
      ItemModel(
        id: uuid.v4(),
        title: 'Urban Cityscape',
        description: 'Modern cityscape featuring tall skyscrapers, busy streets, and vibrant urban life. This stunning view captures the essence of contemporary architecture and the dynamic rhythm of metropolitan living with a beautiful sunset glow on the horizon.',
        imageUrl: "https://images.unsplash.com/photo-1486559015136-da87c2012ccb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NDYwNzU0MTV8&ixlib=rb-4.0.3&q=80&w=1080",
        category: 'Urban',
      ),
      ItemModel(
        id: uuid.v4(),
        title: 'Tropical Beach',
        description: 'Serene tropical beach paradise with white sand, turquoise waters, and palm trees. This idyllic seaside setting offers the perfect escape to relax and unwind in a tranquil environment where the ocean meets pristine shores.',
        imageUrl: "https://images.unsplash.com/photo-1489589947464-ac72e1abd198?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NDYwNzU0MTV8&ixlib=rb-4.0.3&q=80&w=1080",
        category: 'Beaches',
      ),
      ItemModel(
        id: uuid.v4(),
        title: 'Wildlife Safari',
        description: 'An exciting wildlife encounter featuring exotic animals in their natural habitat. This remarkable scene showcases the diversity and wonder of nature\'s creatures in action across the savannah plains.',
        imageUrl: "https://images.unsplash.com/photo-1609167839803-2563add6329e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NDYwNzU0MTZ8&ixlib=rb-4.0.3&q=80&w=1080",
        category: 'Wildlife',
      ),
      ItemModel(
        id: uuid.v4(),
        title: 'Historic Architecture',
        description: 'Magnificent ancient architecture with intricate details and historical significance. This structure stands as a testament to human craftsmanship and artistic vision throughout the centuries, displaying remarkable preservation.',
        imageUrl: "https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NDYwNzU0MTZ8&ixlib=rb-4.0.3&q=80&w=1080",
        category: 'Architecture',
      ),
      ItemModel(
        id: uuid.v4(),
        title: 'Food Delicacies',
        description: 'Delicious gourmet food presentation with vibrant colors and appetizing arrangement. This culinary masterpiece combines fresh ingredients, artistic plating, and tantalizing textures that promise an unforgettable dining experience.',
        imageUrl: "https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NDYwNzU0MTd8&ixlib=rb-4.0.3&q=80&w=1080",
        category: 'Food',
      ),
    ];
  }
}