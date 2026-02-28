---
layout: post
title: Pygments Syntax Highlighting Theme Showcase
subtitle: Browse and compare all available code syntax highlighting themes
readtime: true
tags: [themes, syntax-highlighting, code, pygments]
---

<style>
/* Theme selector styling */
.theme-selector {
  margin: 2rem 0;
  padding: 1.5rem;
  background: var(--box-note-bg);
  border: 1px solid var(--box-border-col);
  border-radius: 0.5rem;
}

.theme-selector label {
  display: block;
  font-weight: bold;
  margin-bottom: 0.5rem;
  color: var(--text-col);
}

.theme-selector select {
  width: 100%;
  padding: 0.5rem;
  font-size: 1rem;
  border: 1px solid var(--navbar-border-col);
  border-radius: 0.25rem;
  background: var(--page-col);
  color: var(--text-col);
  margin-bottom: 1rem;
}

.theme-selector select:focus {
  outline: 2px solid var(--link-col);
  outline-offset: 2px;
}

.theme-info {
  margin-top: 1rem;
  padding: 1rem;
  background: var(--page-col);
  border-radius: 0.25rem;
  font-family: monospace;
  font-size: 0.9rem;
}

#theme-style-container {
  /* Container for dynamically injected theme CSS */
}
</style>

Beautiful Jekyll Next includes over 80 Pygments syntax highlighting themes to choose from!
Use the dropdown below to preview different themes and find your favorites.

{: .box-note}
**Note:** The theme previews below use enhanced CSS specificity to override the site's default styles for demonstration
purposes. When you configure a theme in your `_config.yml` and build your site, the actual appearance may differ
slightly based on your site's color configuration and theme settings. Some themes define colors that work better in
specific contexts and may appear differently when the page is built with your custom color options.

## Interactive Theme Preview

<div class="theme-selector">
  <label for="theme-select">Select a Pygments Theme:</label>
  <select id="theme-select">
    {% comment %}
    Themes are listed from _includes/pygment_highlights/ (not static files,
    so they cannot be discovered dynamically via site.static_files).
    {% endcomment %}

    <optgroup label="Custom Themes">
      <option value="beautiful-jekyll-og">beautiful-jekyll-og</option>
    </optgroup>

    <optgroup label="Pygments">
      {% assign pygments_themes = "abap,algol,algol_nu,arduino,autumn,borland,bw,coffee,colorful,default,dracula,emacs,friendly,friendly_grayscale,fruity,github-dark,gruvbox-dark,gruvbox-light,igor,inkpot,lightbulb,lovelace,manni,material,monokai,murphy,native,nord-darker,nord,one-dark,paraiso-dark,paraiso-light,pastie,perldoc,rainbow_dash,rrt,sas,solarized-dark,solarized-light,staroffice,stata-dark,stata-light,tango,trac,vim,vs,xcode,zenburn" | split: "," %}
      {% for theme in pygments_themes %}
        <option value="pygments/{{ theme }}">{{ theme }}</option>
      {% endfor %}
    </optgroup>

    <optgroup label="Pygments styles">
      {% assign pygments_styles_themes = "andromeeda,aurora-x,ayu-dark,ayu-light,ayu-mirage,catppuccin-frappe,catppuccin-latte,catppuccin-macchiato,catppuccin-mocha,dark-plus,everforest-dark,everforest-light,github-dark-default,github-dark-dimmed,github-dark-high-contrast,github-light-default,github-light-high-contrast,gruvbox-dark-hard,gruvbox-dark-medium,gruvbox-dark-soft,gruvbox-light-hard,gruvbox-light-medium,gruvbox-light-soft,laserwave-high-contrast,laserwave,light-plus,min-dark,min-light,one-dark-pro,one-light,plastic" | split: "," %}
      {% for theme in pygments_styles_themes %}
        <option value="pygments-styles/{{ theme }}">{{ theme }}</option>
      {% endfor %}
    </optgroup>
  </select>

  <div class="theme-info">
    <strong>Config values for _config.yml:</strong><br>
    <code id="config-value-light">pygments-theme-light: "beautiful-jekyll-og"</code><br>
    <em>OR</em><br>
    <code id="config-value-dark">pygments-theme-dark: "beautiful-jekyll-og"</code>
  </div>
</div>

<div id="theme-style-container"></div>

## Code Samples

### Python Example

```python
# Sample Python code
def fibonacci(n):
    '''Calculate Fibonacci sequence'''
    if n <= 1:
        return n
    else:
        return fibonacci(n-1) + fibonacci(n-2)

# Test the function
for i in range(10):
    print(f'F({i}) = {fibonacci(i)}')

# Dictionary and list examples
config = {
    'name': 'Beautiful Jekyll',
    'version': 6.0,
    'features': ['themes', 'responsive', 'fast']
}

# List comprehension
squares = [x**2 for x in range(10)]

# Lambda function
multiply = lambda x, y: x * y
result = multiply(5, 3)
```

### JavaScript Example

```javascript
// Sample JavaScript code
function fibonacci(n) {
    // Calculate Fibonacci sequence
    if (n <= 1) {
        return n;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

// Test the function
for (let i = 0; i < 10; i++) {
    console.log(`F(${i}) = ${fibonacci(i)}`);
}

// Object and array examples
const config = {
    name: 'Beautiful Jekyll',
    version: 6.0,
    features: ['themes', 'responsive', 'fast']
};

// Arrow function
const multiply = (x, y) => x * y;
const result = multiply(5, 3);

// Promise example
fetch('/api/data')
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
```

### Ruby Example

```ruby
# Sample Ruby code
def fibonacci(n)
  # Calculate Fibonacci sequence
  if n <= 1
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

# Test the function
(0..9).each do |i|
  puts "F(#{i}) = #{fibonacci(i)}"
end

# Hash and array examples
config = {
  name: 'Beautiful Jekyll',
  version: 6.0,
  features: ['themes', 'responsive', 'fast']
}

# Block example
squares = (0..9).map { |x| x**2 }

# Lambda
multiply = ->(x, y) { x * y }
result = multiply.call(5, 3)
```

### Java Example

```java
// Sample Java code
public class Fibonacci {
    // Calculate Fibonacci sequence
    public static int fibonacci(int n) {
        if (n <= 1) {
            return n;
        } else {
            return fibonacci(n - 1) + fibonacci(n - 2);
        }
    }

    public static void main(String[] args) {
        // Test the function
        for (int i = 0; i < 10; i++) {
            System.out.println("F(" + i + ") = " + fibonacci(i));
        }

        // Array example
        int[] squares = new int[10];
        for (int i = 0; i < 10; i++) {
            squares[i] = i * i;
        }
    }
}
```

### CSS Example

```css
/* Sample CSS code */
:root {
  --primary-color: #007bff;
  --secondary-color: #6c757d;
  --font-family: 'Roboto', sans-serif;
}

.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem;
}

.button {
  background-color: var(--primary-color);
  color: white;
  padding: 0.75rem 1.5rem;
  border: none;
  border-radius: 0.25rem;
  cursor: pointer;
  transition: all 0.3s ease;
}

.button:hover {
  background-color: #0056b3;
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

@media (max-width: 768px) {
  .container {
    padding: 1rem;
  }
}
```

### SQL Example

```sql
-- Sample SQL code
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert sample data
INSERT INTO users (username, email) VALUES
    ('john_doe', 'john@example.com'),
    ('jane_smith', 'jane@example.com');

-- Select with JOIN
SELECT u.username, p.title, p.created_at
FROM users u
INNER JOIN posts p ON u.id = p.user_id
WHERE p.published = 1
ORDER BY p.created_at DESC
LIMIT 10;

-- Update with condition
UPDATE users
SET email = 'newemail@example.com'
WHERE username = 'john_doe';
```


<script src="{{ '/assets/css/pygment-themes-data.js' | relative_url }}"></script>
<script>
(function() {
  const themeSelect = document.getElementById('theme-select');
  const configValueLight = document.getElementById('config-value-light');
  const configValueDark = document.getElementById('config-value-dark');
  const styleContainer = document.getElementById('theme-style-container');

  // Function to wrap CSS rules with high specificity selectors
  function wrapWithHighSpecificity(css) {
    // Replace all .highlight selectors with more specific ones that work in both light and dark modes
    // This ensures our dynamic theme overrides the site's default themes

    // First, handle the simple .highlight token classes
    css = css.replace(/\.hightlight\s+([.\w-]+)/g, 'html body .hightlight $1');

    // Handle [data-bs-theme="dark"] if present, make it even more specific
    css = css.replace(/\[data-bs-theme="dark"\]\s+/g, 'html[data-bs-theme="dark"] body ');

    // Wrap all remaining .highlight rules with html body for higher specificity
    css = css.replace(/(^|[^-\w])\.highlight\s+/g, '$1html body .highlight ');

    // Add !important to all color, background-color, font-weight, and font-style properties
    css = css.replace(/\b(color|background-color|background|font-weight|font-style|border)\s*:\s*([^;}]+?)(\s*;|\s*})/gi,
      function(match, property, value, ending) {
        // Don't add !important if it's already there
        if (value.trim().endsWith('!important')) {
          return match;
        }
        return property + ': ' + value.trim() + ' !important' + ending;
      }
    );

    return css;
  }

  // Function to load and apply a theme
  function loadTheme(themePath) {
    try {
      // Update both config value displays
      configValueLight.textContent = `pygments-theme-light: "${themePath}"`;
      configValueDark.textContent = `pygments-theme-dark: "${themePath}"`;

      // Look up the CSS from the preloaded theme data
      const themes = window.pygmentThemesData || {};
      let css = themes[themePath];

      if (!css) {
        configValueLight.textContent = 'Theme not found. Please try another.';
        configValueDark.textContent = 'Theme not found. Please try another.';
        return;
      }

      // Wrap with high specificity selectors and add !important
      css = wrapWithHighSpecificity(css);

      // Remove existing theme style
      const existingStyle = document.getElementById('dynamic-theme-style');
      if (existingStyle) {
        existingStyle.remove();
      }

      // Create and inject new style element
      const styleElement = document.createElement('style');
      styleElement.id = 'dynamic-theme-style';
      styleElement.textContent = css;
      styleContainer.appendChild(styleElement);

      // Store selection in localStorage
      localStorage.setItem('showcase-theme', themePath);

    } catch (error) {
      console.error('Error loading theme:', error);
      configValueLight.textContent = 'Error loading theme. Please try another.';
      configValueDark.textContent = 'Error loading theme. Please try another.';
    }
  }

  // Event listener for theme selection
  themeSelect.addEventListener('change', function() {
    loadTheme(this.value);
  });

  // Load saved theme or default on page load
  const savedTheme = localStorage.getItem('showcase-theme');
  if (savedTheme) {
    themeSelect.value = savedTheme;
    loadTheme(savedTheme);
  } else {
    loadTheme('beautiful-jekyll-og');
  }
})();
</script>

## Popular Theme Combinations

Here are some recommended light/dark theme pairs for your site:

### GitHub Style
```yaml
pygments-theme-light: "pygments-styles/github-light-default"
pygments-theme-dark: "pygments-styles/github-dark-dimmed"
```

### VS Code Style
```yaml
pygments-theme-light: "pygments-styles/light-plus"
pygments-theme-dark: "pygments-styles/dark-plus"
```

### Gruvbox Style
```yaml
pygments-theme-light: "pygments/gruvbox-light"
pygments-theme-dark: "pygments/gruvbox-dark"
```

### Catppuccin Style
```yaml
pygments-theme-light: "pygments-styles/catppuccin-latte"
pygments-theme-dark: "pygments-styles/catppuccin-mocha"
```

### Solarized Style
```yaml
pygments-theme-light: "pygments/solarized-light"
pygments-theme-dark: "pygments/solarized-dark"
```

### One Light/Dark
```yaml
pygments-theme-light: "pygments-styles/one-light"
pygments-theme-dark: "pygments-styles/one-dark-pro"
```

### Dracula
```yaml
pygments-theme-light: "pygments-styles/light-plus"
pygments-theme-dark: "pygments/dracula"
```

### Nord
```yaml
pygments-theme-light: "pygments-styles/min-light"
pygments-theme-dark: "pygments/nord"
```

## Tips

- **Use the dropdown above** to instantly preview any theme with the code samples
- The "Config value" box shows you the exact line to add to your `_config.yml`
- Use the **theme switcher button** in the navbar to toggle between light and dark site themes

## How to Apply a Theme

Once you've found a theme you like:

1. **Copy the config value** shown in the box above the dropdown
2. **Open your `_config.yml`** file
3. **Add or update** the `pygments-theme-light` or `pygments-theme-dark` setting
4. **Rebuild your site** with `bundle exec jekyll serve`
5. **Enjoy your new syntax highlighting!**

## More Information

- Total themes available: **80+**
- All themes are generated using [Pygments](https://pygments.org/)
- Many additional themes provided by [Pygments Styles](https://pygments-styles.org/)
- Compatible with Beautiful Jekyll Next's theme switcher
- Fully customizable color schemes
