//
//  ViewController.m
//  Bubble Sort
//
//  Created by Mr_Lucky on 2019/2/19.
//  Copyright © 2019 wenbo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *arr = @[@(1),@(8),@(10),@(3),@(7)].mutableCopy;
    NSArray *result = [self bubbleSort:arr];
    NSLog(@"%@",result);
}

/*
 冒泡排序是一种简单的排序算法。它重复地走访过要排序的数列，一次比较两个元素，如果它们的顺序错误就把它们交换过来。走访数列的工作是重复地进行直到没有再需要交换，也就是说该数列已经排序完成。这个算法的名字由来是因为越小的元素会经由交换慢慢“浮”到数列的顶端。
 
 时间复杂度（平均）：O(n²)
 时间复杂度（最好）：O(n²)
 空间复杂度：O(1)
 稳定性：稳定
 
 算法描述：
 - 比较相邻的元素。如果第一个比第二个大，就交换它们两个；
 - 对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对，这样在最后的元素应该会是最大的数；
 - 针对所有的元素重复以上的步骤，除了最后一个；
 - 重复步骤1~3，直到排序完成。
 */
//- (NSArray *)bubbleSort:(NSMutableArray *)array {
//    for (int i = 0; i < array.count; i ++) {
//        for (int j = 0; j < array.count - i - 1; j ++) {
//            if ([array[j] intValue] > [array[j + 1] intValue]) {
//                [array exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
//            }
//        }
//    }
//    return array;
//}

//优化算法从第一个开始排序，空间复杂度高一点
//- (NSArray *)bubbleSort:(NSMutableArray *)array {
//    for (int i = 0; i < array.count; i ++) {
//        BOOL flag = NO;
//        for (int j = 0; j < array.count - i - 1; j ++) {
//            if ([array[j] intValue] > [array[j + 1] intValue]) {
//                flag = YES;
//                [array exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
//            }
//        }
//        if (!flag) {
//            //没发生交换直接退出，说明是有序数组
//            break;
//        }
//    }
//    return array.copy;
//}

//优化算法，从末尾开始排序
- (NSArray *)bubbleSort:(NSMutableArray *)array {
    for (int i = 0; i < array.count; i ++) {
        BOOL flag = NO;
        for (int j = (int)array.count - 1; j > i; j --) {
            if ([array[j] intValue] < [array[j - 1] intValue]) {
                flag = YES;
                [array exchangeObjectAtIndex:j withObjectAtIndex:j - 1];
            }
        }
        if (!flag) {
            break;
        }
    }
    return array;
}

@end
