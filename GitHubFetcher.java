import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Scanner;

public class GitHubFetcher {
    public static void main(String[] args) throws IOException, InterruptedException {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter repository owner:");
        String owner = scanner.nextLine();
        System.out.println("Enter repository name:");
        String repo = scanner.nextLine();
        System.out.println("Enter labels (comma separated):");
        String labelsInput = scanner.nextLine();

        StringBuilder query = new StringBuilder("repo:" + owner + "/" + repo);
        if (!labelsInput.trim().isEmpty()) {
            String[] labels = labelsInput.split(",");
            for (String label : labels) {
                query.append("+label:\"").append(label.trim()).append("\"");
            }
        }

        HttpClient client = HttpClient.newHttpClient();
        String url = "https://api.github.com/search/issues?q=" + query.toString() + "&sort=created&order=desc&per_page=10";
        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(url))
                .header("User-Agent", "GitHubFetcher/1.0")
                .build();
        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
        String json = response.body();

        // Simple parsing to extract issue titles
        String[] parts = json.split("\"title\":\"");
        System.out.println("List of GitHub issues:");
        for (int i = 1; i < parts.length; i++) {
            String title = parts[i].split("\"")[0];
            System.out.println("- " + title);
        }
    }
}