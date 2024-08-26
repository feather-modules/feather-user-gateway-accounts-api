import FeatherOpenAPIKit

extension UserGateway {
    public enum Accounts: Component {
        static let path: Path = UserGateway.path / "accounts"
    }
}
