import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => Main(),
    ),
    GoRoute(path: "/pageA", builder: (context, state) => PageA()),
    GoRoute(path: "/pageB", builder: (context, state) => PageB())
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () => context.go("/"), child: Text("Main Page")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => context.go("/pageA"), child: Text("Page A")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => context.go("/pageB"), child: Text("Page B")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageC())),
              child: Text("Page C")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageD())),
              child: Text("Page D")),
          const SizedBox(
            height: 20,
          ),
          CachedNetworkImage(
            imageUrl:
            "https://thumbs.dreamstime.com/z/alphabet-blocks-5217589.jpg?ct=jpeg",
            height: 300,
            width: 500,
            errorWidget: (context, url, widget) => const Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                )),
          )
        ],
      )),
    );
  }
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page B'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () => context.go("/"), child: Text("Main Page")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => context.go("/pageA"), child: Text("Page A")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => context.go("/pageB"), child: Text("Page B")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageC())),
              child: Text("Page C")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageD())),
              child: Text("Page D")),
          const SizedBox(
            height: 20,
          ),
          CachedNetworkImage(
            imageUrl:
            "https://thumbs.dreamstime.com/z/animal-alphabet-b-13450918.jpg?ct=jpeg",
            height: 300,
            width: 300,
            errorWidget: (context, url, widget) => const Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                )),
          )
        ],
      )),
    );
  }
}

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page A'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              onPressed: () => context.go("/"), child: Text("Main Page")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => context.go("/pageA"), child: Text("Page A")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => context.go("/pageB"), child: Text("Page B")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageC())),
              child: Text("Page C")),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PageD())),
              child: Text("Page D")),
          const SizedBox(
            height: 20,
          ),
          CachedNetworkImage(
            imageUrl:
            "https://thumbs.dreamstime.com/z/animal-alphabet-13450915.jpg?ct=jpeg",
            height: 300,
            width: 300,
            errorWidget: (context, url, widget) => const Center(
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                )),
          )
        ],
      )),
    );
  }
}

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page C'),
        backgroundColor: Colors.limeAccent,
      ),
        body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                TextButton(
                  child: const Text('Go back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CachedNetworkImage(
                  imageUrl:
                  "https://thumbs.dreamstime.com/z/animal-alphabet-c-13450922.jpg?ct=jpeg",
                  height: 300,
                  width: 300,
                  errorWidget: (context, url, widget) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      )),
                )
              ],
            )));
  }
}

class PageD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Page D'),
          backgroundColor: Colors.purple,
        ),
        body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                TextButton(
                  child: const Text('Go back'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CachedNetworkImage(
                  imageUrl:
                      "https://thumbs.dreamstime.com/z/animal-alphabet-d-13450928.jpg?ct=jpeg",
                  height: 300,
                  width: 300,
                  errorWidget: (context, url, widget) => const Center(
                      child: Icon(
                    Icons.error,
                    color: Colors.red,
                  )),
                )
              ],
            )));
  }
}
