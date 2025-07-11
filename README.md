
<!-- Stolen from https://github.com/Yimura/Yimura. Appreciate the work! -->

```rust
struct AboutMe;

impl AboutMe {
    pub fn name() -> &'static str {
        "Wesley Yang"
    }

    pub fn languages() -> Vec<&'static str> {
        vec![
            "Chinese",
            "English",
        ]
    }

    pub fn coding_languages() -> Vec<&'static str> {
        vec![
            "Rust",
            "C",
            "C++",
            "Python",
            "TypeScript",
        ]
    }

    pub fn tech_stack() -> Vec<&'static str> {
        vec![
            "Linux",
            "Embedded Systems",
            "Next.js",
            "Github CI/CD",
        ]
    }

    pub fn toolset() -> Vec<&'static str> {
        vec![
            "Docker",
            "Git",
            "Nix",
        ]
    }

    pub fn socials() -> std::collections::HashMap<&'static str, &'static str> {
        let mut map = std::collections::HashMap::new();
        map.insert("blog", "https://wesleyel.github.io");
        map.insert("github", "https://github.com/wesleyel");
        map
    }
}

impl std::fmt::Display for AboutMe {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(f, "Name: {}\n", AboutMe::name())?;
        write!(f, "Languages: {}\n", AboutMe::languages().join(", "))?;
        write!(f, "Coding Languages: {}\n", AboutMe::coding_languages().join(", "))?;
        write!(f, "Tech Stack: {}\n", AboutMe::tech_stack().join(", "))?;
        write!(f, "Toolset: {}\n", AboutMe::toolset().join(", "))?;
        write!(f, "Socials: {}", AboutMe::socials().iter().map(|(k, v)| format!("{}: {}", k, v)).collect::<Vec<_>>().join(", "))
    }
}

pub fn main() {
    let about_me = AboutMe {};
    println!("{}", about_me);
}
```

## 🤹 Recent Activity
```
💪 Opened PR #4 in ExBook/ExBook
❌ Closed PR #3 in ExBook/ExBook
⬆️ Pushed 1 commit to wesleyel/ExBook
⬆️ Pushed 1 commit to wesleyel/ExBook
💪 Opened PR #3 in ExBook/ExBook
```
## 🌟 Cool Repos
```
⭐️ 139 📦 balamod/balamod
⭐️ 49  📦 wesleyel/cloudmark
⭐️ 13  📦 wesleyel/keyle
⭐️ 11  📦 league-fan/league-fan.github.io
⭐️ 10  📦 wesleyel/elevatorController
```