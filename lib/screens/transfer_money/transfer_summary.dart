import 'package:flutter/material.dart';
import 'package:sign_language_detection/screens/main_page.dart';

class TransferSummary extends StatefulWidget {
  final String accountName;
  final String accountNumber;
  final String transferAmount;
  final String? accountType;
  final String? bankName;

  const TransferSummary({
    super.key,
    required this.accountName,
    required this.accountNumber,
    required this.transferAmount,
    this.accountType,
    this.bankName,
  });

  @override
  State<TransferSummary> createState() => _TransferSummaryState();
}

class _TransferSummaryState extends State<TransferSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/conversation.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Transfer Summary",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              child: Card(
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Transfer   GHC ${widget.transferAmount}  to: ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      if (widget.bankName != '')
                        Text(
                          "Bank Name: ${widget.bankName}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Account Name: ${widget.accountName}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (widget.accountType != "")
                        Text(
                          "Account Number: ${widget.accountNumber}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                  child: SizedBox(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Complete",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            //fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
