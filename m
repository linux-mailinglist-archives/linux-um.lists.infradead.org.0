Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6493151665
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 08:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGthLvERznPx1ZWqMN7sY187DGiMpz3HT1NQzewVccU=; b=A4FoReW9MU+mni
	5VaeGSE2s2pG6wz2R7SSvadPdJowmCcMG6Iu7MRJ/Q9P6vWKkoBMMT+/Y2UoLxazCMKF+XTObKT0h
	JbzaQhvSlv1HBvDs8botGl9O/pxgoHDL6HwhdYqU9IT45z+VnqQHNdo3Z9BCZM14A6cUe1usSqvnO
	qzW9rE/FoVNYc8C+maTcJ0voB7fK1QBOijKMK65XCPZHVTfZsRqaNXjjcLIkFDNQkk+pddgm3CbB3
	p98wb5kFhZPxvugKYIH06SlrpJBoI5Reh5Eqn9NPik61ZN5lxidVEFb2A8Nta077ihSYOkxeKaF54
	mSeZ4bsfdEsXFHx7MG0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iysUQ-0005uI-4f; Tue, 04 Feb 2020 07:19:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iysUO-0005ti-50
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 07:19:17 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AF32B21582;
 Tue,  4 Feb 2020 07:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580800755;
 bh=gsyVytQK3lixYjo33kenNe/YEUvIbsBpfPWPkn8VMak=;
 h=In-Reply-To:References:From:To:Subject:Cc:Date:From;
 b=YOESc0J/SHEpC/EWipMosXdbRmdp9/hgZzW02aTkN02BWA7qg8SdYtNgTEc9CMzE4
 I2IL8ok2TF1bqiwmH14mE92yxsGbgdBhHidnG9n/DbA8zO2mvbFv0qd3pLEth4flUR
 FNDsbDpC6W63KwlisnBO2WxUXSS+iuHw99Nwe4lY=
MIME-Version: 1.0
In-Reply-To: <20200130230812.142642-1-brendanhiggins@google.com>
References: <20200130230812.142642-1-brendanhiggins@google.com>
From: Stephen Boyd <sboyd@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>, akpm@linux-foundation.org,
 alan.maguire@oracle.com, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 davidgow@google.com, frowand.list@gmail.com, jdike@addtoit.com,
 keescook@chromium.org, richard@nod.at, rppt@linux.ibm.com,
 skhan@linuxfoundation.org, yzaikin@google.com
Subject: Re: [PATCH v2 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
User-Agent: alot/0.8.1
Date: Mon, 03 Feb 2020 23:19:14 -0800
Message-Id: <20200204071915.AF32B21582@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_231916_219057_9EB93F82 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-doc@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 Brendan Higgins <brendanhiggins@google.com>, kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Quoting Brendan Higgins (2020-01-30 15:08:05)
> ## TL;DR
> 
> This patchset adds a centralized executor to dispatch tests rather than
> relying on late_initcall to schedule each test suite separately along
> with a couple of new features that depend on it.

Is there any diff from v1 to v2? I don't know what changed, but I see
that my Reviewed-by tag has been put on everything, so I guess
everything I said was addressed or discussed in the previous round.


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
