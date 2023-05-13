   Container(
          child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                  subtitle: Text('New message'),
                  leading: Image.asset(photo[index]),
                );
              }),
        ),