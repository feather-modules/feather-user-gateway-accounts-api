import FeatherAPIKit
import FeatherOpenAPIKit
import Foundation
import OpenAPIKit
import SystemAPIKit
import UserGatewayAccountsAPIKit
import UserAPIKit

struct OpenAPIDocument: Document {

    let components: [Component.Type] = [
        Feather.Core.self,
        System.Permission.Schemas.self,
        User.Account.Schemas.self,
        User.Account.Parameters.self,
        User.Account.Responses.self,
        User.Role.Schemas.self,
        UserGateway.self,
    ]

    func openAPIDocument() throws -> OpenAPI.Document {
        let dateString = DateFormatter.localizedString(
            from: Date(),
            dateStyle: .medium,
            timeStyle: .medium
        )

        return try composedDocument(
            info: .init(
                title: "Feather - UserGateway - Accounts - API",
                description: """
                    The complete Accounts API definition used by the UserGateway.
                    (Generated on: \(dateString))
                    """,
                contact: .init(
                    name: "Binary Birds",
                    url: .init(string: "https://binarybirds.com")!,
                    email: "info@binarybirds.com"
                ),
                version: "1.0.0"
            ),
            servers: [
                .init(
                    url: .init(string: "http://localhost:8080")!,
                    description: "dev"
                )
            ]
        )
    }
}
