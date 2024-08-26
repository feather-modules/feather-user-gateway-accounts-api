import FeatherOpenAPIKit

extension UserGateway.Accounts {

    enum Responses {

        enum ReferenceArray: JSONResponse {
            static let description = "User references"
            static let schema: Schema.Type = Schemas.ReferenceArray.self
        }
    }
}
