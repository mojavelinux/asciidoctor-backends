def block_meta node
  id = node.id ? %([[#{node.id}]]\n) : nil
  role = node.role? ? %([role="#{node.role}"]\n) : nil
  title = node.title? ? %(.#{node.title}\n) : nil
  %(#{id}#{role}#{title})
end

def unescape str
  str.gsub('{', '\\{').gsub('&#160;', '{nbsp}').gsub('&#43;', '{plus}').gsub('&#8217;', '\'').
      gsub('&#8230;', '...').gsub('&#8201;&#8212;&#8201;', ' -- ').gsub('&lt;', '<').gsub('&gt;', '>').gsub('&amp;', '&')
end
