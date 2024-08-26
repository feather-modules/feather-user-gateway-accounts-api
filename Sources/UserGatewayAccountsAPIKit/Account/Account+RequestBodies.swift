import FeatherOpenAPIKit

extension UserGateway.Accounts {

    enum RequestBodies {

        enum IdArray: JSONBody {
            static let description = "User ids"
            static let schema: Schema.Type = Schemas.IdArray.self
        }
    }
}
