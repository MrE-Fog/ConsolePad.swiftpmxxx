import SwiftUI

struct ConsoleMessageCell {
    let message: ConsoleMessage
}

extension ConsoleMessageCell: View {
    var body: some View {
        switch self.message.type {
        case .input:
            Label(self.message.text, systemImage: "chevron.right")
                .fontDesign(.monospaced)
                .foregroundColor(.primary)
        case .value:
            Label(self.message.text, systemImage: "arrow.left")
                .fontDesign(.monospaced)
                .foregroundColor(.gray)
        case .debug, .log:
            Text(self.message.text)
                .fontDesign(.monospaced)
        case .info:
            Label {
                Text(self.message.text)
                    .fontDesign(.monospaced)
            } icon: {
                Image(systemName: "i.circle.fill")
                    .foregroundColor(.blue)
            }
        case .warn:
            Label {
                Text(self.message.text)
                    .fontDesign(.monospaced)
            } icon: {
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundColor(.yellow)
            }
            .listRowBackground(Color.yellow.opacity(0.2))
        case .error:
            Label(self.message.text, systemImage: "xmark.circle.fill")
                .fontDesign(.monospaced)
                .foregroundColor(.red)
                .listRowBackground(Color.red.opacity(0.2))
        }
    }
}

struct ConsoleMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        List(MessageType.allCases, id: \.self) { type in
            ConsoleMessageCell(
                message: .init(text: "\(type)", type: type)
            )
        }
        .listStyle(.plain)
        .previewPresets()
    }
}
