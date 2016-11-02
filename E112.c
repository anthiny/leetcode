/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     struct TreeNode *left;
 *     struct TreeNode *right;
 * };
 */

bool hasPathSum(struct TreeNode* root, int sum) {

    if (root == NULL){
        return false;
    }
    
    int val = root->val;
    bool lTemp = false;
    bool rTemp = false;
    
    if (root->left != NULL){
        lTemp = hasPathSum(root->left, sum-val);
    }
    if (root->right != NULL){
        rTemp = hasPathSum(root->right, sum-val);
    }
    
    if (root->right == NULL && root->left == NULL){
        if (val == sum){
            return true;
        }
    }
    return (lTemp || rTemp);
}
