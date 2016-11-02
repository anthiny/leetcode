/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

bool find;
int result;

bool hasPathSum(struct TreeNode* root, int sum) {
    find = false;
    result = 0;
    
    if (root == NULL){
        return false;
    }
    travelingNode(root, sum);
    return find;
}

void travelingNode(struct TreeNode* node, int target){
    if (!find)
    {
        result = result + (node->val);
        if (node->left != NULL){
            travelingNode(node->left, target);
        }
        if (node->right != NULL){
            travelingNode(node->right, target);
        }
        
        if (node->right == NULL && node->left == NULL){
            checkResult(result, target);
        }
        result = result - (node->val);
    }
}

void checkResult(int num, int target){
    if (result == target){
        find = true;
    }
}
