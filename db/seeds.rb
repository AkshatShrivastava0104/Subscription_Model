Plan.create(name: "Free", price: 0)
Plan.create(name: "Pro", price: 9.99)

Post.create(title: "Getting Started", body: "Welcome to our platform!", premium: false)
Post.create(title: "Pro Tips", body: "This content is for Pro users only.", premium: true)
