@main
struct WatchList {
    private(set) var text = "Hello, World!"

    static func main() {
        print(WatchList().text)
    }
}
