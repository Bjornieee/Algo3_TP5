#include "bstree.h"
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>

#include "queue.h"

void bstree_remove_node(ptrBinarySearchTree *t, ptrBinarySearchTree current);

/*------------------------  BSTreeType  -----------------------------*/

struct _bstree {
    BinarySearchTree *parent;
    BinarySearchTree *left;
    BinarySearchTree *right;
    int root;
};

/*------------------------  BaseBSTree  -----------------------------*/

BinarySearchTree *bstree_create() {
    return NULL;
}

/* This constructor is private so that we can maintain the oredring invariant on
 * nodes. The only way to add nodes to the tree is with the bstree_add function
 * that ensures the invariant.
 */
BinarySearchTree *bstree_cons(BinarySearchTree *left, BinarySearchTree *right, int root) {
    BinarySearchTree *t = malloc(sizeof(struct _bstree));
    t->parent = NULL;
    t->left = left;
    t->right = right;
    if (t->left != NULL)
        t->left->parent = t;
    if (t->right != NULL)
        t->right->parent = t;
    t->root = root;
    return t;
}

void bstree_delete(ptrBinarySearchTree *t) {
    while (!bstree_empty(*t))
        bstree_remove_node(t, *t);
}

bool bstree_empty(const BinarySearchTree *t) {
    return t == NULL;
}

int bstree_root(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->root;
}

BinarySearchTree *bstree_left(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->left;
}

BinarySearchTree *bstree_right(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->right;
}

BinarySearchTree *bstree_parent(const BinarySearchTree *t) {
    assert(!bstree_empty(t));
    return t->parent;
}

/*------------------------  BSTreeDictionary  -----------------------------*/

/* Obligation de passer l'arbre par référence pour pouvoir le modifier */
void bstree_add(ptrBinarySearchTree *t, int value) {
    if (!*t) {
        (*t) = bstree_cons(NULL, NULL, value);
        return;
    }
    ptrBinarySearchTree *tree = t;
    while (*tree) {
        if (value == (*tree)->root) return;
        if (value > (*tree)->root) {
            if ((*tree)->right) {
                tree = &((*tree)->right);
            } else {
                (*tree)->right = bstree_cons(NULL, NULL, value);
                (*tree)->right->parent = (*tree);
                return;
            }
        } else {
            if ((*tree)->left) {
                tree = &((*tree)->left);
            } else {
                (*tree)->left = bstree_cons(NULL, NULL, value);
                (*tree)->left->parent = (*tree);
                return;
            }
        }
    }
}

bool bstree_search(const BinarySearchTree *tree, int value) {
    if (!tree) return false;
    BinarySearchTree tree1 = *tree;
    BinarySearchTree *t = &tree1;
    while (t) {
        if (t->root == value) return true;
        else if (t->root > value) t = (t->left);
        else if (t->root < value) t = (t->right);
    }
    return false;
}

BinarySearchTree *bstree_successor(const BinarySearchTree *x) {
    assert(!bstree_empty(x));
    (void) x;
    return NULL;
}

BinarySearchTree *bstree_predecessor(const BinarySearchTree *x) {
    assert(!bstree_empty(x));
    (void) x;
    return NULL;
}

void bstree_swap_nodes(ptrBinarySearchTree *tree, ptrBinarySearchTree from, ptrBinarySearchTree to) {
    assert(!bstree_empty(*tree) && !bstree_empty(from) && !bstree_empty(to));
    (void) tree;
    (void) from;
    (void) to;
}

// t -> the tree to remove from, current -> the node to remove
void bstree_remove_node(ptrBinarySearchTree *t, ptrBinarySearchTree current) {
    assert(!bstree_empty(*t) && !bstree_empty(current));
    (void) t;
    (void) current;
}

void bstree_remove(ptrBinarySearchTree *t, int v) {
    (void) t;
    (void) v;
}

/*------------------------  BSTreeVisitors  -----------------------------*/

void bstree_depth_prefix(const BinarySearchTree *tree, OperateFunctor f, void *userData) {
    if (bstree_empty(tree)) {
        return;
    }
    f(tree, userData);
    bstree_depth_prefix(tree->left, f, userData);
    bstree_depth_prefix(tree->right, f, userData);
}

void bstree_depth_infix(const BinarySearchTree *tree, OperateFunctor f, void *userData) {
    if (bstree_empty(tree)) {
        return;
    }
    bstree_depth_infix(tree->left, f, userData);
    f(tree, userData);
    bstree_depth_infix(tree->right, f, userData);
}

void bstree_depth_postfix(const BinarySearchTree *tree, OperateFunctor f, void *userData) {
    if (bstree_empty(tree)) {
        return;
    }
    bstree_depth_postfix(tree->left, f, userData);
    bstree_depth_postfix(tree->right, f, userData);
    f(tree, userData);
}

void bstree_iterative_depth_infix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    (void) t;
    (void) f;
    (void) userData;
}

void bstree_iterative_breadth_prefix(const BinarySearchTree *t, OperateFunctor f, void *userData) {
    Queue *queue = createQueue();
    queuePush(queue, t);
    while (!queueEmpty(queue)) {
        if (!queueTop(queue)) queuePop(queue);
        else {
            f(queueTop(queue), userData);
            queuePush(queue, bstree_left(queueTop(queue)));
            queuePush(queue, bstree_right(queueTop(queue)));
            queuePop(queue);
        }
    }
}

/*------------------------  BSTreeIterator  -----------------------------*/

struct _BSTreeIterator {
    /* the collection the iterator is attached to */
    const BinarySearchTree *collection;

    /* the first element according to the iterator direction */
    const BinarySearchTree *(*begin)(const BinarySearchTree *);

    /* the current element pointed by the iterator */
    const BinarySearchTree *current;

    /* function that goes to the next element according to the iterator direction */
    BinarySearchTree *(*next)(const BinarySearchTree *);
};

/* minimum element of the collection */
const BinarySearchTree *goto_min(const BinarySearchTree *e) {
    (void) e;
    return NULL;
}

/* maximum element of the collection */
const BinarySearchTree *goto_max(const BinarySearchTree *e) {
    (void) e;
    return NULL;
}

/* constructor */
BSTreeIterator *bstree_iterator_create(const BinarySearchTree *collection, IteratorDirection direction) {
    (void) collection;
    (void) direction;
    return NULL;
}

/* destructor */
void bstree_iterator_delete(ptrBSTreeIterator *i) {
    free(*i);
    *i = NULL;
}

BSTreeIterator *bstree_iterator_begin(BSTreeIterator *i) {
    i->current = i->begin(i->collection);
    return i;
}

bool bstree_iterator_end(const BSTreeIterator *i) {
    return i->current == NULL;
}

BSTreeIterator *bstree_iterator_next(BSTreeIterator *i) {
    i->current = i->next(i->current);
    return i;
}

const BinarySearchTree *bstree_iterator_value(const BSTreeIterator *i) {
    return i->current;
}

