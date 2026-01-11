import re

def minify_html(input_file, output_file):
    with open(input_file, 'r', encoding='utf-8') as f:
        content = f.read()

    # Remove comments
    content = re.sub(r'<!--(.*?)-->', '', content, flags=re.DOTALL)
    
    # Remove whitespace between tags
    content = re.sub(r'>\s+<', '><', content)
    
    # Reduce multiple spaces to single space
    content = re.sub(r'\s+', ' ', content)
    
    # Write output
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(content)

if __name__ == "__main__":
    minify_html('index.html', 'index.min.html')
    print("Minification complete: index.min.html")
