# HVGradientView
HVGradientView is a pod which helps to add gradient effect to any UIVIew. It is written in Swift 4.

# Installation
### Using Cocoapods
1. Open podfile in your project.
2. Add the following into your podfile:
```   
pod ‘HVGradientView’, :git => ‘https://github.com/Harsh061/HVGradientView.git’, :tag => ‘1.0.0’
```
3. Run the command:
```
pod install
```

## Usage
1. Open the project. Drag a UIView into storyboard.
2. Go the the identity inspector and in the class field, type HVGradientView instead of UIView.
3. Open the viewcontroller and create an outlet of the view.
```
@IBOutlet weak var gradientView: HVGradientView!
```
4. Set your custom properties like topColor, bottomColor, CornerRadius and Gradient direction.
5. Gradient direction can be:
##### Horizontal
<img src="https://github.com/Harsh061/eduwings/blob/master/eduwings/assets/img/Screen%20Shot%202018-08-18%20at%208.57.12%20AM.png" width="200" height="100" title="horizontal">

##### Vertical
<img src="https://github.com/Harsh061/eduwings/blob/master/eduwings/assets/img/Screen%20Shot%202018-08-18%20at%208.57.36%20AM.png" width="200" height="100" title="horizontal">

##### Diagonal
<img src="https://github.com/Harsh061/eduwings/blob/master/eduwings/assets/img/Screen%20Shot%202018-08-18%20at%208.57.58%20AM.png" width="200" height="100" title="horizontal">

#### Example:
```
private func setupGradientView() {
   gradView.translatesAutoresizingMaskIntoConstraints = false
   gradView.topColor = UIColor.yellow
   gradView.bottomColor = UIColor.red
   gradView.gradientDirection = .horizontal
}
```
