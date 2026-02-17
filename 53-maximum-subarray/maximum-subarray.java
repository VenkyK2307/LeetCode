class Solution {
    public int maxSubArray(int[] nums) {

        int far = nums[0];
        int max = nums[0];

        for(int i =1;i<nums.length;i++){
            far = Math.max(far +nums[i] , nums[i]);
            max = Math.max(max , far);
        }

        return max;
        
    }
}