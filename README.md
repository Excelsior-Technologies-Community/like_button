# Flutter Like Button

A lightweight and customizable Flutter like button package with animated like/unlike effects, custom icons, custom colors, haptic feedback, and realtime like count updates.

Perfect for:
- social media apps
- Instagram-like UIs
- reels & shorts
- blog apps
- post interactions
- reaction systems

---

# ✨ Features

- ❤️ Like / Unlike
- ⚡ Animated Scaling Effect
- 🔢 Like Count Support
- 🎨 Custom Colors
- 😀 Custom Icons
- 📳 Haptic Feedback
- 🧠 Reusable Stateless Architecture
- 📱 Responsive UI
- 🔥 Realtime Updates
- 🪶 Lightweight & Fast

---

### Demo



https://github.com/user-attachments/assets/21c38434-25ac-460c-b80e-720598e3a01b


# 📦 Installation

Add dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_like_button: 
     path: ../
```

Then run:

```bash
flutter pub get
```

---

# 🚀 Import

```dart
import 'package:flutter_like_button/flutter_like_button.dart';
```

---

# 🛠 Basic Usage

```dart
final isLiked =
    ValueNotifier(false);

final likeCount =
    ValueNotifier(120);

LikeButton(

  isLiked: isLiked,

  likeCount: likeCount,
)
```

---

# 📱 Full Example

```dart
import 'package:flutter/material.dart';

import 'package:flutter_like_button/flutter_like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp
    extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner:
          false,

      home: const DemoPage(),
    );
  }
}

class DemoPage
    extends StatelessWidget {

  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {

    /// STATE
    final isLiked =
        ValueNotifier(false);

    final likeCount =
        ValueNotifier(120);

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Like Button Demo',
        ),
      ),

      body: Center(

        child: LikeButton(

          /// REQUIRED
          isLiked: isLiked,

          likeCount: likeCount,

          /// CUSTOM COLORS
          likedColor: Colors.pink,

          unLikedColor:
              Colors.black,

          /// CUSTOM ICONS
          likedIcon:
              Icons.favorite,

          unLikedIcon:
              Icons.favorite_border,

          /// SIZE
          iconSize: 40,

          /// HAPTIC
          enableHapticFeedback:
              true,

          /// CUSTOM TEXT STYLE
          countStyle:
              const TextStyle(

            fontSize: 22,

            fontWeight:
                FontWeight.bold,

            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
```

---

# ⚙️ Available Parameters

| Parameter | Type | Description |
|---|---|---|
| `isLiked` | `ValueNotifier<bool>` | Like state |
| `likeCount` | `ValueNotifier<int>` | Total likes |
| `likedColor` | `Color` | Liked icon color |
| `unLikedColor` | `Color` | Unliked icon color |
| `likedIcon` | `IconData` | Liked icon |
| `unLikedIcon` | `IconData` | Unliked icon |
| `iconSize` | `double` | Icon size |
| `enableHapticFeedback` | `bool` | Enable vibration |
| `countStyle` | `TextStyle` | Like count style |

---

# ❤️ Like / Unlike

The package automatically:
- toggles like state
- updates count
- animates icon
- rebuilds UI instantly

---

# 🎨 Custom Colors

```dart
likedColor: Colors.pink,

unLikedColor: Colors.grey,
```

---

# 😀 Custom Icons

```dart
likedIcon: Icons.thumb_up,

unLikedIcon: Icons.thumb_up_off_alt,
```

---

# 🔢 Auto Count Formatting

Automatically converts:

```text
1200 -> 1.2K
1500000 -> 1.5M
```

---

# 📳 Haptic Feedback

Enable vibration feedback:

```dart
enableHapticFeedback: true
```

---

# 📄 License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
