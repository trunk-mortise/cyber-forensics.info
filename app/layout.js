import "./globals.css";

export const metadata = {
  title: "Cyber Forensics",
  description: "Your go-to resource for cyber forensics information",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
