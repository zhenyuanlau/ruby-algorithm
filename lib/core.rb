# frozen_string_literal: true

def cycle?(head)
  slow = fast = head
  until fast.nil? || fast.next.nil?
    fast = fast.next.next
    slow = slow.next
    return true if fast == slow
  end
  false
end

def detect_cycle(_head)
  nil
end

def remove_duplicates(nums)
  return 0 if nums.empty?

  n = nums.size
  slow = fast = 1
  while fast <= n - 1
    if nums[fast] != nums[fast - 1]
      nums[slow] = nums[fast]
      slow += 1
    end
    fast += 1
  end
  slow
end
