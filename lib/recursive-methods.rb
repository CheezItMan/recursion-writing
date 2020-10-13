# Authoring recursive algorithms. Add comments including time and space complexity for each method.

# Time complexity: O(n)?
# Space complexity: O(n)?
def factorial(n)
    return n if n == 1
    return 1 if n == 0
    raise ArgumentError if n < 0
  
    n = n * factorial(n-1)
  end
  
  # Time complexity: O(n) ?
  # Space complexity: O(n) ?
  def reverse(s)
    return s if s.length <= 1
    return s[-1] + reverse(s[0...-1])
  end
  
  # Time complexity: O(n) ?
  # Space complexity: O(n) ?
  def reverse_inplace(s)
    return s if s.length <= 1
    return s[-1] + reverse(s[0...-1])
  end
  
  # Time complexity: O(n)?
  # Space complexity: O(n)?
  def bunny(n)
    return n if n == 0
    return 2 + bunny(n-1)
  end
  
  # Time complexity: 0(n)?
  # Space complexity: O(n) ?
  def nested(s)
    return true if s.length == 0
    return false if s.length % 2 != 0
  
    if s[0] + s[-1] == "()"
      return nested(s[1...-1])
    else
      return false
    end
  
    
  end
  
  # Time complexity: O(n) ?
  # Space complexity: O(n)?
  def search(array, value)
    return false if array.length == 0
    return true if value == array[0]
    return search(array[1..-1], value)
  end
  
  # Time complexity: O(n)?
  # Space complexity: O(n) ?
  def is_palindrome(s)
    return true if s.length <= 1
    if s[0] == s[-1]
      return is_palindrome(s[1...-1])
    else
      return false
    end
  end
  
  # Time complexity: O(n)?
  # Space complexity: O(n)?
  def digit_match(n, m)
    n_dig = n.digits
    m_dig = m.digits
  
    min = [n_dig.length, m_dig.length].min
  
    return 0 if (n_dig.length == 1 || m_dig.length == 1) && (n_dig[0] != m_dig[0])
    return 1 if (n_dig.length == 1 || m_dig.length == 1) && (n_dig[0] == m_dig[0])
    
    if n_dig[0] == m_dig[0]
      n = n_dig[1..(min - 1)].join.reverse.to_i
      m = m_dig[1..(min - 1)].join.reverse.to_i
      return 1 + digit_match(n, m)
    else
      n = n_dig[1..(min - 1)].join.reverse.to_i
      m = m_dig[1..(min - 1)].join.reverse.to_i
      return digit_match(n, m)
    end
  end