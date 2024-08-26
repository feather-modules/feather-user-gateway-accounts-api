import FeatherAPIKit
import FeatherOpenAPIKit
import SystemAPIKit
import UserAPIKit

extension UserGateway.Accounts {

    public enum Schemas {

        public enum IdArray: ArraySchema {
            public static let description = "User ids"
            public static let items: Schema.Type = User.Account.Schemas.Id.self
        }

        public enum ReferenceArray: ArraySchema {
            public static let description = "User references"
            public static let items: Schema.Type = User.Account.Schemas
                .Reference.self
        }
    }
}
