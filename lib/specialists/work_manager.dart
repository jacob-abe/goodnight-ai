import 'package:workmanager/workmanager.dart';

class WorkManagerRunner {
  static const bgApiSyncTask = "syncWithTheBackEnd";
  static Workmanager workManager = Workmanager();

  WorkManagerRunner(){
    workManager.initialize(callbackDispatcher);
    registerPeriodicTask();
  }

  static void callbackDispatcher() {
    // this method will be called every hour
    workManager.executeTask((task, inputdata) async {
      switch (task) {
        case bgApiSyncTask:
          print("this method was called from native!");
          break;

        case Workmanager.iOSBackgroundTask:
          print("iOS background fetch delegate ran");
          break;
      }
      //Return true when the task executed successfully or not
      return Future.value(true);
    });
  }

  void registerPeriodicTask(){
    workManager.registerPeriodicTask(
      "registerNewStory",
      bgApiSyncTask,
      frequency: const Duration(hours: 24),
    );
    print('Task registered');
  }
}
