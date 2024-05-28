import Foundation
import SDWebImageSVGCoder

let svgURL = Bundle.module.url(forResource: "flag", withExtension: "svg")!
let svgData = try! Data(contentsOf: svgURL)
let image = SDImageSVGCoder.shared.decodedImage(with: svgData, options: [:])!

print("sd_isVector: \(image.sd_isVector)")
