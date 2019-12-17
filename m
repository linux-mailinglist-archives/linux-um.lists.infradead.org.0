Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B6E122691
	for <lists+linux-um@lfdr.de>; Tue, 17 Dec 2019 09:21:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNEiKNeA+jJlElbGqor+zjiMGEFy54XWWtTDoqNUY14=; b=RxCn+BDYzc++uW
	Ywy2rCBwVCTb+ZW+NBr/K6U+QZ1tlUpeZK+v9096YoTKpJjuMc+2XUQdhB9hNZskC9/NE2uqytSBP
	ZgvT6O2E/e5kOSmPEpREnZFzVI8E1giSOEvMMHV09HEg3CRDUK5egJrzYMPRqNHZC5iXJWbO1WF8O
	PqBOVGq/1efwXAnkhJ3VVFH9gsNezlY2ODi0tfuBwpD51atSfBk0Xbxbw0s57GeFwaj1azW/olRlg
	68DGyAijpediQIE8i0gQMhDzl9qR1ZLipTL93XShCekCL69POV8xxo49g5yTcmRVDb/bFXeTAKkIg
	lFs+3NGMCIOiulBf9GGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih86q-0002HE-UO; Tue, 17 Dec 2019 08:21:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih86p-0002Gk-9Q
 for linux-um@lists.infradead.org; Tue, 17 Dec 2019 08:21:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAC792072D;
 Tue, 17 Dec 2019 08:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576570895;
 bh=MgaLGlr0QIaprsB/DrVV7RSPcRWsv/bXdTq+DK1ELwo=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=jBrtAlUHtDr4ZE5xHAyFerxNZDo5qWLLJtZNUNHBYEokpF3cjHwjyea76kUMwEZeS
 4PDT2wyNgKPfdoI3acvAI9hNPLQ2k3OHZPIa0IoxOj1MjEAPmj33jVA0TgsT5CdMVy
 iCAWMb7bRkHZbZgoafHMRJOQasFCKmfHSnYdkjsQ=
MIME-Version: 1.0
In-Reply-To: <20191216220555.245089-3-brendanhiggins@google.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20191216220555.245089-3-brendanhiggins@google.com>
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, jdike@addtoit.com, keescook@chromium.org, richard@nod.at,
 rppt@linux.ibm.com, skhan@linuxfoundation.org, yzaikin@google.com
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [RFC v1 2/6] arch: um: add linker section for KUnit test suites
User-Agent: alot/0.8.1
Date: Tue, 17 Dec 2019 00:21:34 -0800
Message-Id: <20191217082134.DAC792072D@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_002135_349094_95FBD92D 
X-CRM114-Status: UNSURE (   5.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arch@vger.kernel.org, knut.omang@oracle.com,
 gregkh@linuxfoundation.org, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2019-12-16 14:05:51)
> Add a linker section to UML where KUnit can put references to its test
> suites. This patch is an early step in transitioning to dispatching all
> KUnit tests from a centralized executor rather than having each as its
> own separate late_initcall.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
