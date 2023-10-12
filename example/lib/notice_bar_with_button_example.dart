import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_noticebar/phoenix_noticebar.dart';

/// 描述: 带按钮的通知example

class BrnNoticeBarWithButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: '通知样式01',
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            const Text(
              '规则',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const BubbleText(
              maxLines: 3,
              text:
                  '高度56，左边为标签，中间是通知内容，右边是按钮， 其中通知内容必传，标签和按钮文案如果是空，就不显示。所有颜色均支持自定义',
            ),
            const Text(
              '默认样式',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const NoticeBarWithButton(
              content: '这是通知内容',
            ),
            const Text(
              '正常样式',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            NoticeBarWithButton(
              leftTagText: '任务',
              content: '这是通知内容',
              rightButtonText: '去完成',
              onRightButtonTap: () {
                // BrnToast.show('点击右侧按钮', context);
              },
            ),
            const Text(
              '跑马灯',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            NoticeBarWithButton(
              leftTagText: '任务',
              content: '这是跑马灯的通知内容跑马灯的通知内容跑马灯的通知内容跑马灯的通知内容',
              rightButtonText: '去完成',
              marquee: true,
              onRightButtonTap: () {
                // BrnToast.show('点击右侧按钮', context);
              },
            ),
            const Text(
              '隐藏左侧标签',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            NoticeBarWithButton(
              content: '这是通知内容',
              rightButtonText: '去完成',
              onRightButtonTap: () {
                // BrnToast.show('点击右侧按钮', context);
              },
            ),
            const Text(
              '隐藏右侧按钮',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            const NoticeBarWithButton(
              leftTagText: '任务',
              content: '这是通知内容',
            ),
            const Text(
              '通知文案长，不跑马灯',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            NoticeBarWithButton(
              leftTagText: '任务',
              content: '这是通知内容这是通知内容这是通知内容这是通知内容这是通知内容',
              rightButtonText: '去完成',
              onRightButtonTap: () {
                // BrnToast.show('点击右侧按钮', context);
              },
            ),
            const Text(
              '自定义文字和背景颜色',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            NoticeBarWithButton(
              leftTagText: '任务',
              leftTagBackgroundColor: const Color(0xFFE0EDFF),
              leftTagTextColor: const Color(0xFF0984F9),
              content: '这是通知内容这是通知内容这是通知内容这是通知内容这是通知内容',
              backgroundColor: const Color(0xFFEBFFF7),
              contentTextColor: const Color(0xFF00AE66),
              rightButtonText: '去完成',
              rightButtonBorderColor: const Color(0xFF0984F9),
              rightButtonTextColor: const Color(0xFF0984F9),
              onRightButtonTap: () {
                //BrnToast.show('点击右侧按钮', context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ])),
    );
  }
}
