import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../data/models/pokemon_list_item.dart';

class PokemonCard extends StatelessWidget {
  final PokemonListItem item;
  final VoidCallback? onTap;

  const PokemonCard({
    super.key,
    required this.item,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8), // smaller padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image must be flexible
              Expanded(
                child: CachedNetworkImage(
                  imageUrl: item.imageUrl,
                  fit: BoxFit.contain,
                  errorWidget: (_, __, ___) =>
                      const Icon(Icons.image_not_supported),
                ),
              ),
              const SizedBox(height: 4),

              // ID (small)
              Text(
                '#${item.id.toString().padLeft(3, '0')}',
                style: textTheme.labelSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              // Name (single line only)
              Text(
                item.name.toUpperCase(),
                textAlign: TextAlign.center,
                style: textTheme.titleSmall,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
