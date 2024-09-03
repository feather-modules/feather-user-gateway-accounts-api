import FeatherAPIKit
import FeatherOpenAPIKit
import UserAPIKit

extension UserGateway.Accounts {

    enum Operations {

        enum List: Operation {
            static let security: [SecurityScheme.Type] = User.Account.Operations
                .List.security
            static let tag: Tag.Type = Tags.Main.self
            static let summary = User.Account.Operations.List.summary
            static let description = User.Account.Operations.List.description
            static let parameters = User.Account.Operations.List.parameters
            static let requestBody = User.Account.Operations.List.requestBody
            static let responses: [OperationResponse] = User.Account.Operations
                .List.responses
        }

        enum Detail: Operation {
            static let security: [SecurityScheme.Type] = User.Account.Operations
                .Detail.security
            static let tag: Tag.Type = Tags.Main.self
            static let summary = User.Account.Operations.Detail.summary
            static let description = User.Account.Operations.Detail.description
            static let parameters = User.Account.Operations.Detail.parameters
            static let requestBody = User.Account.Operations.Detail.requestBody
            static let responses: [OperationResponse] = User.Account.Operations
                .Detail.responses
        }

        enum Reference: Operation {
            static let security: [SecurityScheme.Type] = .shared
            static let tag: Tag.Type = Tags.Main.self
            static let summary = "Get user references"
            static let description = """
                Return the user references by user ids.
                """
            public static let requestBody: RequestBody.Type? = RequestBodies
                .IdArray.self
            static let responses: [OperationResponse] = [
                .ok(Responses.ReferenceArray.self),
                .badRequest,
                .unauthorized,
                .forbidden,
                .notFound,
                .unsupportedMediaType,
                .unprocessableContent,
            ]
        }
    }
}
