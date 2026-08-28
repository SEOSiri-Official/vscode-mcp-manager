export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);

    if (request.method === "OPTIONS") {
      return new Response(null, {
        status: 204,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, POST, OPTIONS",
          "Access-Control-Allow-Headers": "Content-Type, Authorization, x-seosiri-key",
        },
      });
    }

    if (url.pathname === "/health") {
      return new Response(JSON.stringify({
        status: "HEALTHY",
        service: "SEOSiri VS Code Suite Manager Gateway",
        gateway: "vscode.seosiri.com",
        version: "1.0.0",
        timestamp: new Date().toISOString()
      }), {
        status: 200,
        headers: { "Content-Type": "application/json", "Access-Control-Allow-Origin": "*" }
      });
    }

    const acceptHeader = request.headers.get("Accept") || "";
    if ((url.pathname === "/" || url.pathname === "") && acceptHeader.includes("text/html")) {
      return Response.redirect("https://developers.seosiri.com", 301);
    }

    return new Response(JSON.stringify({ status: "VSCode Edge Active", gateway: "vscode.seosiri.com" }), {
      status: 200,
      headers: { "Content-Type": "application/json", "Access-Control-Allow-Origin": "*" }
    });
  }
};
