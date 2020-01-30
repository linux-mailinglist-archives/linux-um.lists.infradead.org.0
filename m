Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E202F14E5FA
	for <lists+linux-um@lfdr.de>; Fri, 31 Jan 2020 00:08:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mgCs4/JHD7A+fljUqthOn/1xy2VdARMMriBbWvjVQ6A=; b=mmjEcOg8igAwsT
	hdyyw6VgYz5zPxALXNTLV5V7BV8RYaC4HCYghemTz+y9o0hggIw7vPRk9P6aV0quaCvB8qRzSiNNQ
	mY1rWzZi+yWi+T6vSk/bp9oI0Ar4uhkw1x0oTm+8d/ALAjfV1qFEpXAlOnmzq3vVsHy9VUNzhXkRr
	UXahmL0dVACfjX+DvpMVxL3S6KEQx7e2g508vqhLMPvewoaFV/TYcLEVOHqFUdhKvR6GRvWYcSNz8
	yDuIZCnML14kDSWFUZAidgyBS/Ub0MFdwGOZWJVU3XJqq3SxEShz+wEEvf6TqfpPVDOwV9wpQZ/iT
	zGolgudFY+/rL0XZKWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixIvW-0006HW-GF; Thu, 30 Jan 2020 23:08:46 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixIvT-0006EX-GE
 for linux-um@lists.infradead.org; Thu, 30 Jan 2020 23:08:45 +0000
Received: by mail-pg1-x549.google.com with SMTP id l190so2754158pgd.18
 for <linux-um@lists.infradead.org>; Thu, 30 Jan 2020 15:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=IqhCaLiTa6tkSv6MqqTRbQ1OxRAqlbeQ5TORP1OY+H8=;
 b=EGsNWZnd2Yg+nvpMXsv0kveM/rwtSK+38vRD2d7n7ckQ8BSOJjJYHILOKca5PwxsBc
 wRKZmK0ojdBRRhiqCbMhZ+XDJplJoQ2qroH2ioO6J4s4t0FB0UqtIfyHtVJgWlCVI038
 PIwMB+Syre2VAmvwohYodFD5f577T7VmDyCpWyIHnkuIBpMNrKTaLETsEi1qdlhSj/Au
 LYEBD5JBWxEHYanoZ/MmsDHeAgMpjMzKBBER0QAJ6pF1qk/8Jdmb6GTJ6sT+BVRuOUB3
 ZjWtr/lMELwNsXhdPrW8xLLKY45+tnyXxylZyBuu1r04lip/eVnGPkuNKOnTasHfK6LM
 /1Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=IqhCaLiTa6tkSv6MqqTRbQ1OxRAqlbeQ5TORP1OY+H8=;
 b=jFmhIvPWu1yfskbipr2/oScO0VCD35ey2KYKZEXuJaS3vEB1jH/sNJoxrBWcciZ3tS
 eDv2QHb4wirrnvHSt6Oz7w961GwmZlxXZkqGtmcSDbIJTEJyvGuMsGGh5cf/olemICoQ
 Wikc2F/rbvNBrGNGP6jYDjSM+EoS+lu9cLoxieIqx3o3tIDMLLO2nJ+jweMc3X5TYwjY
 74YCU+hJl+STuNo/lZSQagcq1aOn8mlf/yshKm4PCuSJU0AxiR/LQ9KSVVGG3JlN7YpM
 v8CL7YjKBaLE0eU1+5DDI1HCC2vjqlJI4cvBLBV2oRMQo7R3TkA9VmfbpuctnFPMODsO
 v6mw==
X-Gm-Message-State: APjAAAVCAypi6tW2UjaEcLDlK7CDuYCpJUFePV14mCDQsV8dx8BCE7ET
 3J6JmczEu/hlc5C0NCG2upa6znybeh8wmhTg1qTcCQ==
X-Google-Smtp-Source: APXvYqzfKxONIga6cBMUXXUhAl6kId6rD8sxEgumtzshOGe75BVK6sDRP8EBfqBeN26VSzwLtpv9FmnhaACdOqVUj1YHGA==
X-Received: by 2002:a63:3712:: with SMTP id e18mr3982958pga.316.1580425721676; 
 Thu, 30 Jan 2020 15:08:41 -0800 (PST)
Date: Thu, 30 Jan 2020 15:08:10 -0800
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
Message-Id: <20200130230812.142642-6-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20200130230812.142642-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v2 5/7] kunit: test: add test plan to KUnit TAP format
From: Brendan Higgins <brendanhiggins@google.com>
To: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 arnd@arndb.de, keescook@chromium.org, skhan@linuxfoundation.org, 
 alan.maguire@oracle.com, yzaikin@google.com, davidgow@google.com, 
 akpm@linux-foundation.org, rppt@linux.ibm.com, frowand.list@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_150843_541060_76B6D342 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

TAP 14 allows an optional test plan to be emitted before the start of
the start of testing[1]; this is valuable because it makes it possible
for a test harness to detect whether the number of tests run matches the
number of tests expected to be run, ensuring that no tests silently
failed.

Link[1]: https://github.com/isaacs/testanything.github.io/blob/tap14/tap-version-14-specification.md#the-plan
Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 lib/kunit/executor.c                          | 17 +++++
 lib/kunit/test.c                              | 11 ---
 tools/testing/kunit/kunit_parser.py           | 74 ++++++++++++++++---
 .../test_is_test_passed-all_passed.log        |  1 +
 .../test_data/test_is_test_passed-crash.log   |  1 +
 .../test_data/test_is_test_passed-failure.log |  1 +
 6 files changed, 82 insertions(+), 23 deletions(-)

diff --git a/lib/kunit/executor.c b/lib/kunit/executor.c
index b75a46c560847..7fd16feff157e 100644
--- a/lib/kunit/executor.c
+++ b/lib/kunit/executor.c
@@ -11,11 +11,28 @@ extern struct kunit_suite * const * const __kunit_suites_end[];
 
 #if IS_BUILTIN(CONFIG_KUNIT)
 
+static void kunit_print_tap_header(void)
+{
+	struct kunit_suite * const * const *suites, * const *subsuite;
+	int num_of_suites = 0;
+
+	for (suites = __kunit_suites_start;
+	     suites < __kunit_suites_end;
+	     suites++)
+		for (subsuite = *suites; *subsuite != NULL; subsuite++)
+			num_of_suites++;
+
+	pr_info("TAP version 14\n");
+	pr_info("1..%d\n", num_of_suites);
+}
+
 int kunit_run_all_tests(void)
 {
 	struct kunit_suite * const * const *suites, * const *subsuite;
 	bool has_test_failed = false;
 
+	kunit_print_tap_header();
+
 	for (suites = __kunit_suites_start;
 	     suites < __kunit_suites_end;
 	     suites++) {
diff --git a/lib/kunit/test.c b/lib/kunit/test.c
index 9242f932896c7..da56b94261b43 100644
--- a/lib/kunit/test.c
+++ b/lib/kunit/test.c
@@ -18,16 +18,6 @@ static void kunit_set_failure(struct kunit *test)
 	WRITE_ONCE(test->success, false);
 }
 
-static void kunit_print_tap_version(void)
-{
-	static bool kunit_has_printed_tap_version;
-
-	if (!kunit_has_printed_tap_version) {
-		pr_info("TAP version 14\n");
-		kunit_has_printed_tap_version = true;
-	}
-}
-
 static size_t kunit_test_cases_len(struct kunit_case *test_cases)
 {
 	struct kunit_case *test_case;
@@ -41,7 +31,6 @@ static size_t kunit_test_cases_len(struct kunit_case *test_cases)
 
 static void kunit_print_subtest_start(struct kunit_suite *suite)
 {
-	kunit_print_tap_version();
 	pr_info("\t# Subtest: %s\n", suite->name);
 	pr_info("\t1..%zd\n", kunit_test_cases_len(suite->test_cases));
 }
diff --git a/tools/testing/kunit/kunit_parser.py b/tools/testing/kunit/kunit_parser.py
index 4ffbae0f67325..78b3bdd03b1e4 100644
--- a/tools/testing/kunit/kunit_parser.py
+++ b/tools/testing/kunit/kunit_parser.py
@@ -45,6 +45,7 @@ class TestStatus(Enum):
 	FAILURE = auto()
 	TEST_CRASHED = auto()
 	NO_TESTS = auto()
+	FAILURE_TO_PARSE_TESTS = auto()
 
 kunit_start_re = re.compile(r'^TAP version [0-9]+$')
 kunit_end_re = re.compile('List of all partitions:')
@@ -106,7 +107,7 @@ OkNotOkResult = namedtuple('OkNotOkResult', ['is_ok','description', 'text'])
 
 OK_NOT_OK_SUBTEST = re.compile(r'^\t(ok|not ok) [0-9]+ - (.*)$')
 
-OK_NOT_OK_MODULE = re.compile(r'^(ok|not ok) [0-9]+ - (.*)$')
+OK_NOT_OK_MODULE = re.compile(r'^(ok|not ok) ([0-9]+) - (.*)$')
 
 def parse_ok_not_ok_test_case(lines: List[str],
 			      test_case: TestCase,
@@ -196,7 +197,9 @@ def max_status(left: TestStatus, right: TestStatus) -> TestStatus:
 	else:
 		return TestStatus.SUCCESS
 
-def parse_ok_not_ok_test_suite(lines: List[str], test_suite: TestSuite) -> bool:
+def parse_ok_not_ok_test_suite(lines: List[str],
+			       test_suite: TestSuite,
+			       expected_suite_index: int) -> bool:
 	consume_non_diagnositic(lines)
 	if not lines:
 		test_suite.status = TestStatus.TEST_CRASHED
@@ -209,6 +212,12 @@ def parse_ok_not_ok_test_suite(lines: List[str], test_suite: TestSuite) -> bool:
 			test_suite.status = TestStatus.SUCCESS
 		else:
 			test_suite.status = TestStatus.FAILURE
+		suite_index = int(match.group(2))
+		if suite_index != expected_suite_index:
+			print_with_timestamp(
+				red('[ERROR] ') + 'expected_suite_index ' +
+				str(expected_suite_index) + ', but got ' +
+				str(suite_index))
 		return True
 	else:
 		return False
@@ -221,7 +230,7 @@ def bubble_up_test_case_errors(test_suite: TestSuite) -> TestStatus:
 	max_test_case_status = bubble_up_errors(lambda x: x.status, test_suite.cases)
 	return max_status(max_test_case_status, test_suite.status)
 
-def parse_test_suite(lines: List[str]) -> TestSuite:
+def parse_test_suite(lines: List[str], expected_suite_index: int) -> TestSuite:
 	if not lines:
 		return None
 	consume_non_diagnositic(lines)
@@ -240,7 +249,7 @@ def parse_test_suite(lines: List[str]) -> TestSuite:
 		test_suite.cases.append(test_case)
 		test_case = parse_test_case(lines, expected_test_case_num > 0)
 		expected_test_case_num -= 1
-	if parse_ok_not_ok_test_suite(lines, test_suite):
+	if parse_ok_not_ok_test_suite(lines, test_suite, expected_suite_index):
 		test_suite.status = bubble_up_test_case_errors(test_suite)
 		return test_suite
 	elif not lines:
@@ -260,6 +269,17 @@ def parse_tap_header(lines: List[str]) -> bool:
 	else:
 		return False
 
+TEST_PLAN = re.compile(r'[0-9]+\.\.([0-9]+)')
+
+def parse_test_plan(lines: List[str]) -> int:
+	consume_non_diagnositic(lines)
+	match = TEST_PLAN.match(lines[0])
+	if match:
+		lines.pop(0)
+		return int(match.group(1))
+	else:
+		return None
+
 def bubble_up_suite_errors(test_suite_list: List[TestSuite]) -> TestStatus:
 	return bubble_up_errors(lambda x: x.status, test_suite_list)
 
@@ -268,19 +288,34 @@ def parse_test_result(lines: List[str]) -> TestResult:
 		return TestResult(TestStatus.NO_TESTS, [], lines)
 	consume_non_diagnositic(lines)
 	if not parse_tap_header(lines):
-		return None
+		return TestResult(TestStatus.NO_TESTS, [], lines)
+	expected_test_suite_num = parse_test_plan(lines)
+	if not expected_test_suite_num:
+		return TestResult(TestStatus.FAILURE_TO_PARSE_TESTS, [], lines)
 	test_suites = []
-	test_suite = parse_test_suite(lines)
-	while test_suite:
-		test_suites.append(test_suite)
-		test_suite = parse_test_suite(lines)
-	return TestResult(bubble_up_suite_errors(test_suites), test_suites, lines)
+	for i in range(1, expected_test_suite_num + 1):
+		test_suite = parse_test_suite(lines, i)
+		if test_suite:
+			test_suites.append(test_suite)
+		else:
+			print_with_timestamp(
+				red('[ERROR] ') + ' expected ' +
+				str(expected_test_suite_num) +
+				' test suites, but got ' + str(i - 2))
+			break
+	test_suite = parse_test_suite(lines, -1)
+	if test_suite:
+		print_with_timestamp(red('[ERROR] ') +
+			'got unexpected test suite: ' + test_suite.name)
+	if test_suites:
+		return TestResult(bubble_up_suite_errors(test_suites), test_suites, lines)
+	else:
+		return TestResult(TestStatus.NO_TESTS, [], lines)
 
-def parse_run_tests(kernel_output) -> TestResult:
+def print_and_count_results(test_result: TestResult) -> None:
 	total_tests = 0
 	failed_tests = 0
 	crashed_tests = 0
-	test_result = parse_test_result(list(isolate_kunit_output(kernel_output)))
 	for test_suite in test_result.suites:
 		if test_suite.status == TestStatus.SUCCESS:
 			print_suite_divider(green('[PASSED] ') + test_suite.name)
@@ -302,6 +337,21 @@ def parse_run_tests(kernel_output) -> TestResult:
 				print_with_timestamp(red('[FAILED] ') + test_case.name)
 				print_log(map(yellow, test_case.log))
 				print_with_timestamp('')
+	return total_tests, failed_tests, crashed_tests
+
+def parse_run_tests(kernel_output) -> TestResult:
+	total_tests = 0
+	failed_tests = 0
+	crashed_tests = 0
+	test_result = parse_test_result(list(isolate_kunit_output(kernel_output)))
+	if test_result.status == TestStatus.NO_TESTS:
+		print(red('[ERROR] ') + yellow('no tests run!'))
+	elif test_result.status == TestStatus.FAILURE_TO_PARSE_TESTS:
+		print(red('[ERROR] ') + yellow('could not parse test results!'))
+	else:
+		(total_tests,
+		 failed_tests,
+		 crashed_tests) = print_and_count_results(test_result)
 	print_with_timestamp(DIVIDER)
 	fmt = green if test_result.status == TestStatus.SUCCESS else red
 	print_with_timestamp(
diff --git a/tools/testing/kunit/test_data/test_is_test_passed-all_passed.log b/tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
index 62ebc0288355c..bc0dc8fe35b76 100644
--- a/tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
+++ b/tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
@@ -1,4 +1,5 @@
 TAP version 14
+1..2
 	# Subtest: sysctl_test
 	1..8
 	# sysctl_test_dointvec_null_tbl_data: sysctl_test_dointvec_null_tbl_data passed
diff --git a/tools/testing/kunit/test_data/test_is_test_passed-crash.log b/tools/testing/kunit/test_data/test_is_test_passed-crash.log
index 0b249870c8be4..4d97f6708c4a5 100644
--- a/tools/testing/kunit/test_data/test_is_test_passed-crash.log
+++ b/tools/testing/kunit/test_data/test_is_test_passed-crash.log
@@ -1,6 +1,7 @@
 printk: console [tty0] enabled
 printk: console [mc-1] enabled
 TAP version 14
+1..2
 	# Subtest: sysctl_test
 	1..8
 	# sysctl_test_dointvec_null_tbl_data: sysctl_test_dointvec_null_tbl_data passed
diff --git a/tools/testing/kunit/test_data/test_is_test_passed-failure.log b/tools/testing/kunit/test_data/test_is_test_passed-failure.log
index 9e89d32d5667a..7a416497e3bec 100644
--- a/tools/testing/kunit/test_data/test_is_test_passed-failure.log
+++ b/tools/testing/kunit/test_data/test_is_test_passed-failure.log
@@ -1,4 +1,5 @@
 TAP version 14
+1..2
 	# Subtest: sysctl_test
 	1..8
 	# sysctl_test_dointvec_null_tbl_data: sysctl_test_dointvec_null_tbl_data passed
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
