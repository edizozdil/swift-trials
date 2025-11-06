
import Foundation

struct DeleteProductResponse: Decodable {
    var rta: Bool?
    var statusCode: Int?
    var message: String?
    var error: String?
}
