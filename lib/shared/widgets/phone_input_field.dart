import 'package:flutter/material.dart';

class PhoneInputField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(String)? onCountryCodeChanged;

  const PhoneInputField({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
    this.onCountryCodeChanged,
  });

  @override
  State<PhoneInputField> createState() => _PhoneInputFieldState();
}

class _PhoneInputFieldState extends State<PhoneInputField> {
  String _selectedCountryCode = '+966';

  final List<Map<String, String>> _countryCodes = [
    {'code': '+966', 'country': 'السعودية', 'flag': '🇸🇦'},
    {'code': '+971', 'country': 'الإمارات', 'flag': '🇦🇪'},
    {'code': '+965', 'country': 'الكويت', 'flag': '🇰🇼'},
    {'code': '+973', 'country': 'البحرين', 'flag': '🇧🇭'},
    {'code': '+974', 'country': 'قطر', 'flag': '🇶🇦'},
    {'code': '+968', 'country': 'عمان', 'flag': '🇴🇲'},
    {'code': '+962', 'country': 'الأردن', 'flag': '🇯🇴'},
    {'code': '+961', 'country': 'لبنان', 'flag': '🇱🇧'},
    {'code': '+20', 'country': 'مصر', 'flag': '🇪🇬'},
  ];

  String get fullPhoneNumber => _selectedCountryCode + widget.controller.text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
          textDirection: TextDirection.rtl,
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Phone Number Field
            Expanded(
              child: TextFormField(
                controller: widget.controller,
                keyboardType: TextInputType.phone,
                textDirection: TextDirection.ltr,
                decoration: InputDecoration(
                  hintText: '501234567',
                  hintTextDirection: TextDirection.ltr,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color(0xFF0B574B), width: 2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red, width: 2),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                ),
                validator: widget.validator,
              ),
            ),
            const SizedBox(width: 10),
            // Country Code Selector
            Container(
              height: 56,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(12),
              ),
              child: PopupMenuButton<String>(
                initialValue: _selectedCountryCode,
                onSelected: (code) {
                  setState(() => _selectedCountryCode = code);
                  if (widget.onCountryCodeChanged != null) {
                    widget.onCountryCodeChanged!(code);
                  }
                },
                itemBuilder: (context) {
                  return _countryCodes.map((country) {
                    return PopupMenuItem<String>(
                      value: country['code'],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            country['country']!,
                            style: const TextStyle(fontSize: 14),
                            textDirection: TextDirection.rtl,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            country['flag']!,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            country['code']!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_drop_down, size: 24),
                      const SizedBox(width: 4),
                      Text(
                        _selectedCountryCode,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        _countryCodes.firstWhere(
                          (c) => c['code'] == _selectedCountryCode,
                        )['flag']!,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
