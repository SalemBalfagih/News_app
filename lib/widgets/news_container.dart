import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/artical_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                articalModel.image ??
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJH_624J4W_xsSK3NPwWebvhVYe3S-KStmbWihZm_Y1UjqPi2M19Rvbfd3aWn_CmjewOk&usqp=CAU",
                height: 200,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 12,
          ),
          Text(
            articalModel.tilte,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            articalModel.description ?? "",
            maxLines: 2,
            style: TextStyle(color: Colors.black54, fontSize: 14),
          )
        ],
      ),
    );
  }
}
