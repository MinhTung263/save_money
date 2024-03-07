import '../../app_src.dart';

class PageBuilder extends GetView<GetxController> {
  const PageBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStr.pageBuilder),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => Get.back(),
              child: const Center(
                child: Text(
                  "Back flash page",
                ),
              ),
            ).paddingSymmetric(
              horizontal: 50,
            ),
          ),
        ],
      ),
    );
  }
}
