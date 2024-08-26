import FeatherOpenAPIKit
import UserAPIKit

extension UserGateway.Accounts {

    enum PathItems {

        enum Main: PathItem {
            static let path: Path = UserGateway.Accounts.path
            public static let get: Operation.Type? = Operations.List.self
        }

        enum Identified: PathItem {
            static let path: Path = Main.path / User.Account.Parameters.Id.path
            static let parameters: [Parameter.Type] = [
                User.Account.Parameters.Id.self
            ]
            static let get: Operation.Type? = Operations.Detail.self
            static let put: Operation.Type? = Operations.Update.self
            static let patch: Operation.Type? = Operations.Patch.self
        }

        enum Reference: PathItem {
            static let path: Path = Main.path / "references"
            static let post: Operation.Type? = Operations.Reference.self
        }
    }
}
