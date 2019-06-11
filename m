Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F43E3D4BE
	for <lists+linux-um@lfdr.de>; Tue, 11 Jun 2019 19:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFtXajeYBanNbH7tWWGxiXLVzOTzBpbPmAs5rizDbwg=; b=YVSrqIm1OyPN/Q
	GvKy5ZzRavQ+YfELP5sphzMv9zrgN2PGve7irkFHmlE971AKsdk0rDJPyHXGor+GDwjRFSjN19Jpf
	uarUHS5imDBDgQaB/f6NiJmvjvDeKSUznUdvTV9i+zVacX4hmEaH6sXyYlOoxKD6pNd8h5bzC/YTo
	oPzJlPrb92Ln7zJzVtgE+nItVgdfVfjv7Pch1hHg3FcnSl3AyYdd0LQlbNz19YpEcl/Jmk34jkapp
	mh+VQ4C0qCInqhrK79NC4Goho1yTGnKVN24Catn2/C8AMf4ZvgjZYpEOIEY1cP8MjMjG35XNILsuT
	3iV3sG6hdm4mNqM0Yodg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hal2j-0006vn-WD; Tue, 11 Jun 2019 17:58:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hal2d-0006r1-TQ
 for linux-um@lists.infradead.org; Tue, 11 Jun 2019 17:58:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id bi6so5040772plb.12
 for <linux-um@lists.infradead.org>; Tue, 11 Jun 2019 10:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ezWWyHmFr3D52R1hMjM3lFqjTF5qDUt/Gz8+w6Ybeeg=;
 b=NXabX8VKhqlLINuoMQHbinmJIUbVH0BN+gV3EBZfeU2WCiSZGaL5z1BBk/58lNpSLk
 6OZS/QBr9Xcqp8FLP0aoFzarQalnNz5o/W4LmU3plkkiz8px1w/b14QGZtx/LpELMViT
 Cq0zGOdkG0bUXDxO/omwJpd2ykSJkUq6SnLNsOdyke4UAJxvvy6sJ2KCrvAjbWxYUAfv
 mNi2NE/pq7hdDfUErhLVHQrN935jeqQID0v5d+Q6AZHeXiOFfmRa4pwDvFIRPShgom9k
 +iiaBa56wRxxqOBXtYUg69RYV0vztcjvfpfAUcRMjGUqaocx9uX+ixG798K/4fglHZBe
 neug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ezWWyHmFr3D52R1hMjM3lFqjTF5qDUt/Gz8+w6Ybeeg=;
 b=hy7ewb748FSYle5RkEYk4CrFO/QpN+NupsPjY6zXlITfjiPTgjafLhD2iE4p1eQntB
 85cTFml/vJOtplnnRILVbZmndgnUE1ygsug5J8eygy3APB2PgwFn+7THrS5TRGYi8ikC
 fM4Fpy+3CSrH8Dtw9O4OsB8jiMcjYYdysbbflZbidsgueFtwNhdLrWw9aLTm560p/eXP
 DlArC7lDBov4Hu2h4pnsabFudaTSJiVUavyD9lsCsy/gaCn1MDZ3YmYaozCkrmTdqFks
 Gd7mETnWwGL1pZTGxB3OIjsAz7ozsdbKYTmB+6zjPk8HUTmY+T/BWQH6hz0grth/nwQ/
 rFsw==
X-Gm-Message-State: APjAAAVq6VKSVFzCMFah3SXAbUuzsq+cO30dWWL8lPRXXvQePd9egFLS
 bT00gFroBvKqMVGM2ZQfDq9//w==
X-Google-Smtp-Source: APXvYqxLhXRMoy3niXLUf+3yjcR+oYOqDZdO4IrAaXbVjtaTgohrWX6P7B3Tnf00xa75XTTIUTknBA==
X-Received: by 2002:a17:902:3341:: with SMTP id
 a59mr47725400plc.186.1560275916197; 
 Tue, 11 Jun 2019 10:58:36 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id s64sm13222982pfb.160.2019.06.11.10.58.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 10:58:35 -0700 (PDT)
Date: Tue, 11 Jun 2019 10:58:30 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v4 17/18] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Message-ID: <20190611175830.GA236872@google.com>
References: <20190514221711.248228-1-brendanhiggins@google.com>
 <20190514221711.248228-18-brendanhiggins@google.com>
 <20190517182254.548EA20815@mail.kernel.org>
 <CAAXuY3p4qhKVsSpQ44_kQeGDMfg7OuFLgFyxhcFWS3yf-5A_7g@mail.gmail.com>
 <20190607190047.C3E7A20868@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607190047.C3E7A20868@mail.kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_105840_065373_BC41A8E2 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: -12.0 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 3.7 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, Iurii Zaikin <yzaikin@google.com>,
 jdike@addtoit.com, dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, jpoimboe@redhat.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 12:00:47PM -0700, Stephen Boyd wrote:
> Quoting Iurii Zaikin (2019-06-05 18:29:42)
> > On Fri, May 17, 2019 at 11:22 AM Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Brendan Higgins (2019-05-14 15:17:10)
> > > > diff --git a/kernel/sysctl-test.c b/kernel/sysctl-test.c
> > > > new file mode 100644
> > > > index 0000000000000..fe0f2bae66085
> > > > --- /dev/null
> > > > +++ b/kernel/sysctl-test.c
> > > > +
> > > > +
> > > > +static void sysctl_test_dointvec_happy_single_negative(struct kunit *test)
> > > > +{
> > > > +       struct ctl_table table = {
> > > > +               .procname = "foo",
> > > > +               .data           = &test_data.int_0001,
> > > > +               .maxlen         = sizeof(int),
> > > > +               .mode           = 0644,
> > > > +               .proc_handler   = proc_dointvec,
> > > > +               .extra1         = &i_zero,
> > > > +               .extra2         = &i_one_hundred,
> > > > +       };
> > > > +       char input[] = "-9";
> > > > +       size_t len = sizeof(input) - 1;
> > > > +       loff_t pos = 0;
> > > > +
> > > > +       table.data = kunit_kzalloc(test, sizeof(int), GFP_USER);
> > > > +       KUNIT_EXPECT_EQ(test, 0, proc_dointvec(&table, 1, input, &len, &pos));
> > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, len);
> > > > +       KUNIT_EXPECT_EQ(test, sizeof(input) - 1, pos);
> > > > +       KUNIT_EXPECT_EQ(test, -9, *(int *)table.data);
> > >
> > > Is the casting necessary? Or can the macro do a type coercion of the
> > > second parameter based on the first type?
> >  Data field is defined as void* so I believe casting is necessary to
> > dereference it as a pointer to an array of ints. I don't think the
> > macro should do any type coercion that == operator wouldn't do.
> >  I did change the cast to make it more clear that it's a pointer to an
> > array of ints being dereferenced.
> 
> Ok, I still wonder if we should make KUNIT_EXPECT_EQ check the types on
> both sides and cause a build warning/error if the types aren't the same.
> This would be similar to our min/max macros that complain about
> mismatched types in the comparisons. Then if a test developer needs to
> convert one type or the other they could do so with a
> KUNIT_EXPECT_EQ_T() macro that lists the types to coerce both sides to
> explicitly.

Do you think it would be better to do a phony compare similar to how
min/max used to work prior to 4.17, or to use the new __typecheck(...)
macro? This might seem like a dumb question (and maybe it is), but Iurii
and I thought the former created an error message that was a bit easier
to understand, whereas __typecheck is obviously superior in terms of
code reuse.

This is what we are thinking right now; if you don't have any complaints
I will squash it into the relevant commits on the next revision:
---
From: Iurii Zaikin <yzaikin@google.com>

Adds a warning message when comparing values of different types similar
to what min() / max() macros do.

Signed-off-by: Iurii Zaikin <yzaikin@google.com>
---
 include/kunit/test.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/kunit/test.h b/include/kunit/test.h
index 511c9e85401a6..791e22fba5620 100644
--- a/include/kunit/test.h
+++ b/include/kunit/test.h
@@ -335,6 +335,13 @@ void __printf(3, 4) kunit_printk(const char *level,
 #define kunit_err(test, fmt, ...) \
 		kunit_printk(KERN_ERR, test, fmt, ##__VA_ARGS__)
 
+/*
+ * 'Unnecessary' cast serves to generate a compile-time warning in case
+ * of comparing incompatible types. Inspired by include/linux/kernel.h
+ */
+#define __kunit_typecheck(lhs, rhs) \
+	((void) (&(lhs) == &(rhs)))
+
 static inline struct kunit_stream *kunit_expect_start(struct kunit *test,
 						      const char *file,
 						      const char *line)
@@ -514,6 +521,7 @@ static inline void kunit_expect_ptr_binary(struct kunit *test,
 #define KUNIT_EXPECT_BINARY(test, left, condition, right) do {		       \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_expect_binary(test,					       \
 			    (long long) __left, #left,			       \
 			    (long long) __right, #right,		       \
@@ -524,6 +532,7 @@ static inline void kunit_expect_ptr_binary(struct kunit *test,
 #define KUNIT_EXPECT_BINARY_MSG(test, left, condition, right, fmt, ...) do {   \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_expect_binary_msg(test,					       \
 				(long long) __left, #left,		       \
 				(long long) __right, #right,		       \
@@ -538,6 +547,7 @@ static inline void kunit_expect_ptr_binary(struct kunit *test,
 #define KUNIT_EXPECT_PTR_BINARY(test, left, condition, right) do {	       \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_expect_ptr_binary(test,					       \
 			    (void *) __left, #left,			       \
 			    (void *) __right, #right,			       \
@@ -553,6 +563,7 @@ static inline void kunit_expect_ptr_binary(struct kunit *test,
 				    ...) do {				       \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_expect_ptr_binary_msg(test,				       \
 				    (void *) __left, #left,		       \
 				    (void *) __right, #right,		       \
@@ -1013,6 +1024,7 @@ static inline void kunit_assert_ptr_binary(struct kunit *test,
 #define KUNIT_ASSERT_BINARY(test, left, condition, right) do {		       \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_assert_binary(test,					       \
 			    (long long) __left, #left,			       \
 			    (long long) __right, #right,		       \
@@ -1023,6 +1035,7 @@ static inline void kunit_assert_ptr_binary(struct kunit *test,
 #define KUNIT_ASSERT_BINARY_MSG(test, left, condition, right, fmt, ...) do {   \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_assert_binary_msg(test,					       \
 				(long long) __left, #left,		       \
 				(long long) __right, #right,		       \
@@ -1037,6 +1050,7 @@ static inline void kunit_assert_ptr_binary(struct kunit *test,
 #define KUNIT_ASSERT_PTR_BINARY(test, left, condition, right) do {	       \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_assert_ptr_binary(test,					       \
 				(void *) __left, #left,			       \
 				(void *) __right, #right,		       \
@@ -1051,6 +1065,7 @@ static inline void kunit_assert_ptr_binary(struct kunit *test,
 				    fmt, ...) do {			       \
 	typeof(left) __left = (left);					       \
 	typeof(right) __right = (right);				       \
+	__kunit_typecheck(__left, __right);				       \
 	kunit_assert_ptr_binary_msg(test,				       \
 				    (void *) __left, #left,		       \
 				    (void *) __right, #right,		       \
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
