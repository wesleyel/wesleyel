
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
🗣 Commented on #2074 in jackyzha0/quartz
❌ Closed PR #1 in wesleyel/obsidian-linter
🗣 Commented on #1 in wesleyel/obsidian-linter
❌ Reopened PR #1 in wesleyel/obsidian-linter
🗣 Commented on #1 in wesleyel/obsidian-linter
```
## 🌟 Cool Repos
```
⭐️ 141 📦 balamod/balamod
⭐️ 51  📦 wesleyel/cloudmark
⭐️ 13  📦 wesleyel/keyle
⭐️ 11  📦 league-fan/league-fan.github.io
⭐️ 10  📦 wesleyel/elevatorController
```