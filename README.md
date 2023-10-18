# color_hex:




####  A package helps you to convert Hex color to Color() , and convert Color() to hex color 

------------------
## # 👨‍💻 *Developed  by:*

<img alt="profile" src="https://abom.me/packages/profile.png" width="50" height="50"  style=" border-radius: 100%"/>

**Nasr Al-Rahbi [@abom_me](https://twitter.com/abom_me)**

## 👨🏻‍💻 Find me in  :
[![Twitter](https://img.shields.io/badge/Twitter-%231DA1F2.svg?logo=Twitter&logoColor=white)](https://twitter.com/abom_me)
[![Instagram](https://img.shields.io/badge/Instagram-%23E4405F.svg?logo=Instagram&logoColor=white)](https://instagram.com/abom.me)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-%230077B5.svg?logo=linkedin&logoColor=white)](https://linkedin.com/in/nasr-al-rahbi-08a573245)
[![Stack Overflow](https://img.shields.io/badge/-Stackoverflow-FE7A16?logo=stack-overflow&logoColor=white)](https://stackoverflow.com/users/19994059/nasr-al-rahbi)

---------------
<br>

## 🔥 Get Started :

Pubspec changes:

```
      dependencies:
        color_hex: <last_verison>
```

### How to use it?

**you can add it to your text or color as extension like this :**
```dart
  Color color=Colors.deepPurple;
  String hex="#000000";
  /// here we convert the hex to color and the color to hex 
Text(color.convertToHex.hex,style: TextStyle(color: hex.convertToColor),),
```

---


**Another way you can convert it using the function :**
```dart
  Color color=Colors.deepPurple;
  String hex="#000000";
InkWell(
onTap: (){
/// Convert HexColor to Color()
print(hexToColor(hex).toString());
/// Convert Color() to HexColor
print(colorToHex(color).hex);
print(colorToHex(color).color);
},
child:Text("click to convert",style: TextStyle(
/// here we convert the color to hex then we convert the hex to color again
color: color.convertToHex.hex!.convertToColor
),)
)
```

